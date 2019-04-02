
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

	input  wire					GPIO23,		// FLAG C
	input  wire					GPIO25,		// FLAG D
	input  wire					GPIO26,		// test genetator on	
	input  wire					GPIO27,		// rst_	

	//output  wire [1:0]			A,
	input  wire [1:0]			A,	
	output    wire [15:0]		DQ,			
	
	output  wire					SLCSn,		
	output  wire					SLWRn,		
	output  wire					SLOEn,		
	output  wire					SLRDn,
	
	input   wire					FLAGA,		//GPIO 21
	input   wire					FLAGB,		//GPIO 22
	
	output  wire					PKTENDn,
	output  wire					RCVEN,
	output  wire					PCLK		
	
);

	localparam DW = 16;

	assign  RCVEN = GPIO23;//A[1];//1'b0;
	assign  SD_FPGA2 = GPIO23;

	

	wire 						clk;
	wire 						clk_pll;
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

//	
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------	
//
	
	PLL __ (.CLKI(clk), .CLKOP(clk_pll), .LOCK(pll_lock));
	ILVDS ilvds_I(.A(CLK_NT_P), .AN(CLK_NT_N), .Z(clk));

	assign grst	= ~GPIO27;
	assign tg_on = GPIO26;

	assign PCLK = clk_pll;
	reg oe;
	assign SLOEn = oe;
	
	assign DQ[7] = IF4_SIGN;
	assign DQ[6] = IF4_MAGN;
	assign DQ[5] = IF3_SIGN;
	assign DQ[4] = IF3_MAGN;
	assign DQ[3] = IF2_SIGN;
	assign DQ[2] = IF2_MAGN;
	assign DQ[1] = IF1_SIGN;
	assign DQ[0] = IF1_MAGN;
	

	always @(posedge clk_pll)
			oe <= A[0] & pll_lock;
			
	reg divider2;		
	always @(posedge clk)
		divider2 <= ~divider2;	
			
	assign  SD_FPGA1 = divider2; //1'b1;

endmodule



