/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module fifo16
//
module fifo16 (fifo_16_Data, fifo_16_Q, fifo_16_AlmostEmpty, fifo_16_AlmostFull, 
            fifo_16_Clock, fifo_16_Empty, fifo_16_Full, fifo_16_RdEn, 
            fifo_16_Reset, fifo_16_WrEn) /* synthesis sbp_module=true */ ;
    input [15:0]fifo_16_Data;
    output [15:0]fifo_16_Q;
    output fifo_16_AlmostEmpty;
    output fifo_16_AlmostFull;
    input fifo_16_Clock;
    output fifo_16_Empty;
    output fifo_16_Full;
    input fifo_16_RdEn;
    input fifo_16_Reset;
    input fifo_16_WrEn;
    
    
    fifo_16 fifo_16_inst (.Data({fifo_16_Data}), .Q({fifo_16_Q}), .AlmostEmpty(fifo_16_AlmostEmpty), 
            .AlmostFull(fifo_16_AlmostFull), .Clock(fifo_16_Clock), .Empty(fifo_16_Empty), 
            .Full(fifo_16_Full), .RdEn(fifo_16_RdEn), .Reset(fifo_16_Reset), 
            .WrEn(fifo_16_WrEn));
    
endmodule

