
module inpfifo16(
	input  wire					rst,	
	input  wire					clk,   // input clock &clock for input bus
	// input bus signals
	input  wire [7:0]			dtin,
	// output fifo
	output wire [15:0]			fifo_Q,
	output wire					fifo_empty,
	output wire					fifo_full,
	input   wire					fifo_rd
);

	reg [16:0]			dtextender;
	reg					dt_rdy;
	reg					byte_cnt;
	
//--------------------------------------------
	always @(posedge clk or posedge rst)
		if( rst )
			byte_cnt <= 1'b0;
		else begin
			byte_cnt <= ~byte_cnt;
		end
	
	always @(posedge clk or posedge rst)
		if( rst )
			dtextender <= 17'b0;
		else begin
			if (byte_cnt)
				dtextender <= { 1'b1, dtin[7:0], dtextender[7:0] };
			else
				dtextender <= { 1'b0, dtextender[15:8], dtin[7:0]  };
		end

	fifo_16 fifo_I (
		.Reset				( rst  ),
		.Clock				( clk ),
		.Data				( dtextender[15:0] ),
		.Q					( fifo_Q),
		
		.WrEn				( ~(dtextender[1] & !fifo_full )),
		.RdEn				( ~(fifo_rd& !fifo_empty) ),
		.Empty				( fifo_empty ),
		.Full					( fifo_full),
		.AlmostEmpty	( ),
		.AlmostFull		( )
	);
	
	
endmodule