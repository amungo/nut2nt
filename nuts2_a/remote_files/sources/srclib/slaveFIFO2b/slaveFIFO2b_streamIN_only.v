
`default_nettype none
module slaveFIFO2b_streamIN_only  #( parameter DW = 32 )
(
	input	wire						reset_,					//input reset active low
	input	wire						clk,						//input clk 

	output	wire						wfifo_rd,
	input	wire						fifo_aempty,
	
	output	wire						clk_out,				//output clk 100 Mhz (max) and 180 phase shift
	output	wire [1:0]				faddr,					//output fifo address  
	output	wire						slrd_,					//output read select  1'b1
	output	wire						slwr_,					//output write select
	input	wire						flaga,					//full flag
	input	wire						flagb,					//partial full flag
   	//input	wire						flagc,					//empty flag
	//input	wire						flagd,					//empty partial flag
	output	wire						sloe_,					//output enable select
	output	wire						slcs_,					//output chip select
	output	wire						pktend_				//output pkt end
);


	reg [2:0]							current_stream_in_state;
	reg [2:0]							next_stream_in_state;
	reg [DW-1:0]						data_gen_stream_in;

	//	parameters for StreamIN mode state machine
	localparam [2:0]				stream_in_idle					= 3'd0;
	localparam [2:0]				stream_in_wait_flagb			= 3'd1;
	localparam [2:0]				stream_in_write					= 3'd2;
	localparam [2:0]				stream_in_write_wr_delay	= 3'd3;

	reg									flaga_d;
	reg									flagb_d;
	//reg									flagc_d;
	//reg									flagd_d;
	reg slwr_streamIN_d1_;

	wire slwr_streamIN_;

	//output signal assignment 
	assign slcs_			= 1'b0;
	assign pktend_		= 1'b1;
	assign slrd_			= 1'b1;
	assign faddr			= 2'd0;
	assign sloe_			= 1'b1;

	//assign PMODE  = 2'b11;		
	//assign RESET  = 1'b1;	

	//assign fdata  = (slwr_streamIN_d1_) ? {DW{1'bz}}'dz : data_gen_stream_in;
	assign slwr_   = slwr_streamIN_d1_;   
	assign clk_out = ~clk;

	//wire	clk;
	//wire lock;


	///flopping the INPUTs flags
	always @(posedge clk, negedge reset_) begin
		if( !reset_ ) begin 
			flaga_d <= 1'd0;
			flagb_d <= 1'd0;
			//flagc_d <= 1'd0;
			//flagd_d <= 1'd0;
		end
			else begin
				flaga_d <= flaga;
				flagb_d <= flagb;
				//flagc_d <= flagc;
				//flagd_d <= flagd;
			end	
	end

	assign slwr_streamIN_ = ( (!fifo_aempty) & (current_stream_in_state == stream_in_write)) ? 1'b0 : 1'b1;
	
	assign wfifo_rd =  ~slwr_streamIN_;
	

	always @(posedge clk, negedge reset_) begin
		if( !reset_ ) begin 
			slwr_streamIN_d1_ <= 1'b1;
		end
			else begin
				slwr_streamIN_d1_ <= slwr_streamIN_;
			end	
	end

	//streamIN mode state machine
	always @(posedge clk, negedge reset_) begin
		if( !reset_ ) begin 
			current_stream_in_state <= stream_in_idle;
		end
			else begin
				current_stream_in_state <= next_stream_in_state;
			end	
	end

	//StreamIN mode state machine combo
	always @(*) begin

		next_stream_in_state = current_stream_in_state;

		case( current_stream_in_state )
		
			stream_in_idle: begin
				if(flaga_d == 1'b1) begin
					next_stream_in_state = stream_in_wait_flagb; 
				end else begin
					next_stream_in_state = stream_in_idle;
				end	
			end
			
			stream_in_wait_flagb: begin
				if ( flagb_d == 1'b1 ) begin
					next_stream_in_state = stream_in_write; 
				end else begin
					next_stream_in_state = stream_in_wait_flagb; 
				end
			end
			
			stream_in_write: begin
				if( flagb_d == 1'b0 ) begin
					next_stream_in_state = stream_in_write_wr_delay;
				end else begin
					next_stream_in_state = stream_in_write;
				end
			end
			
			stream_in_write_wr_delay: begin
				next_stream_in_state = stream_in_idle;
			end
		
		endcase
	end



endmodule
