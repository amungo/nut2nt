
`default_nettype none
module toplevel(

	input wire					CLK_NT_P,   // input clock &clock for input bus
	input wire					CLK_NT_N,
	input wire					INT_CTL,

	// input bus signals
	input wire					IF1_MAGN,
	input wire					IF1_SIGN,
	input wire					IF2_MAGN,
	input wire					IF2_SIGN,
	input wire					IF3_MAGN,
	input wire					IF3_SIGN,
	input wire					IF4_MAGN,
	input wire					IF4_SIGN,
	
	input wire					PPS,
	
	output  wire					SD_FPGA1,	// leds
	output  wire					SD_FPGA2,			

	input  wire					GPIO23,		// 
	output reg					GPIO25,		// FIFO_RDY
	input  wire					GPIO26,		// FX3_READY	
	output  wire				GPIO27,		// START USB SYSTEM

	output  wire [1:0]			A,
	output  wire [15:0]			DQ,			
	
	output  wire					SLCSn,		
	output  wire					SLWRn,		
	output  wire					SLOEn,		
	output  wire					SLRDn,
	
	input   wire					FLAGA,		//GPIO 21
	input   wire					FLAGB,		//GPIO 22
	
	input  wire					PKTENDn,
	output  wire					RCVEN,
	input  wire					PCLK		
	
);

	localparam DW = 16;

	wire 						clk;
	wire 						clk_pll;
	wire						clk_pll_div2;
	wire						pll_lock;
	wire [7:0]					wdtin;
	wire						grst;
		
	wire [15:0]				dt_from_fifo;
	wire							wfifo_empty;
	wire							wfifo_aempty;
	wire							wfifo_full;
	wire							wfifo_rd;
	wire							wfifo_wr;
	//wire							slwr;

	wire [DW-1:0]			wfdatao;
	wire [DW-1: 0]			test_data;
	wire							tg_on;			
	//wire [DW-1:0]			wfdatai;

	// ---- fifo signals ----
	wire [7:0] data_bus;
	reg [7:0] data_in_reg;
	wire [7:0]  data_fifo_out;
	wire [15:0] fifo_data;
	reg [15:0] fifo_data_reg;
	wire fifo_empty;
	wire fifo_full;
	wire alm_empty;
	wire rp_reset;
	wire rd_ena;
	wire reset;
	wire wr_ena;

//	
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------	
//
	ILVDS ilvds_I(.A(CLK_NT_P), .AN(CLK_NT_N), .Z(clk));


// --------- PLL --------- // now unused
/*
	PLL	main_PLL (
		.CLKI(clk),
		.CLKOP(clk_pll),
		.CLKOS(clk_pll_div2),
		.LOCK(pll_lock)
	);
*/

	assign grst	= ~GPIO27;
	assign tg_on = GPIO26;
	assign  RCVEN = 1;

	reg oe;
	always @(posedge clk_pll)
			oe <= pll_lock;

	assign A[0] = pll_lock;
	//assign SLWRn = !pll_lock;
	
	
	reg divider2;		
	always @(posedge clk)
		divider2 <= ~divider2;	
			
	//assign  SD_FPGA1 = divider2; //1'b1;

	

	reg [27:0] counter_1 = 28'h0000000;
	reg [7:0] counter_2 = 8'h00;
	reg WR_r = 1'b0;
	reg STRT = 1'b0;

	reg state_1 = 1'b0;

	reg [1:0]stat = 2'b00;
	
	assign SD_FPGA1 = fifo_full;					// ----- Led HL3
	assign SD_FPGA2 = GPIO26;					// ----- Led HL4

 
// ----------------- Delay process start ------------------- O
	always @(posedge clk)
		begin

				// Start warming delay
				if (counter_1 < 28'hF516E80) begin // 6516E80 - 2 sec / 53Mhz
					counter_1 = counter_1+1;
				end	else
					STRT <= 1;

		end

	assign GPIO27 = STRT; // START USB SYSTEM

// ----------------- Muxer data -------------------- O

	always @(posedge clk)
		begin

			// Test counter
			// uncomment line down and line connection to data_in_reg
			//counter_2 <= counter_2 + 1;
			

			//data_in_reg <= counter_2;
			data_in_reg <= {IF4_SIGN, IF4_MAGN ,IF3_SIGN, IF3_MAGN, IF2_SIGN, IF2_MAGN, IF1_SIGN, IF1_MAGN};
		end

// ---------------- Test counter process ------------------ O

	always @(posedge clk)
		begin

			if	(STRT) 										// cypress ready and fpga ready
				WR_r <= 1; 								// always enable but waiting for dma ready
			else
				WR_r <= 0;

		end


	assign data_bus = data_in_reg;


// ---------------- Slave fifo module ------------------- O

	assign reset = 0; //!pll_lock;

// ------  FIFO buffer  -------- O
	fifo_16bit	fifo_16bit_inst  (
		.RPReset(reset), 
		.Reset(reset), 
		.Data (data_bus), 
		.AlmostFull(SLWRn),
		.Full(fifo_full),
		.WrClock(clk), 
        .WrEn(WR_r), // wr_ena
		.Q(data_fifo_out),
		.RdClock(PCLK),
        .RdEn(GPIO26), // rd_ena
		.AlmostEmpty(alm_empty),
		.Empty(fifo_empty)
        
	);

	assign DQ = {8'h00, data_fifo_out};



	// ------- delayer --------- O
	// delay signal 
	reg dden = 0;

	always @(posedge PCLK)
		begin
			dden <= GPIO26;
			GPIO25 <= dden;
		end

endmodule



