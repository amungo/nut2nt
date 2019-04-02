`default_nettype none
module test_gen	 #( parameter DW = 32 )  
(
	input	wire					reset_,
	input	wire					clk,
	input	wire					clr,
	input	wire					rd,
	output	wire [DW-1:0]	data_out
);

	reg [DW-1:0]				data_gen_cnt;

	//ZLP mode state machine
	always @(posedge clk, negedge reset_) begin
		if( !reset_ ) begin 
			data_gen_cnt <= {DW{1'b0}};
		end
		else begin
			if (clr)
				data_gen_cnt <= {DW{1'b0}};
			else if (rd)
				data_gen_cnt <= data_gen_cnt +1;
		end	
	end

	assign data_out = data_gen_cnt;

endmodule
