// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sun Mar  4 14:38:35 2018
//
// Verilog Description of module fifo_16
//

module fifo_16 (Data, Clock, WrEn, RdEn, Reset, Q, Empty, Full, 
            AlmostEmpty, AlmostFull) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(8[8:15])
    input [15:0]Data;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(10[23:27])
    input Clock;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(11[16:21])
    input WrEn;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(12[16:20])
    input RdEn;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(13[16:20])
    input Reset;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(14[16:21])
    output [15:0]Q;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(15[24:25])
    output Empty;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(16[17:22])
    output Full;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(17[17:21])
    output AlmostEmpty;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(18[17:28])
    output AlmostFull;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(19[17:27])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(11[16:21])
    
    wire invout_2, invout_1, rden_i_inv, fcnt_en_inv, fcnt_en, empty_d, 
        full_d, ffidata_0, ffidata_1, ffidata_2, ffidata_3, ffidata_4, 
        ffidata_5, ffidata_6, ffidata_7, ffidata_8, ffidata_9, ffidata_10, 
        ffidata_11, ffidata_12, ffidata_13, ffidata_14, ffidata_15, 
        ae_d, af_d, ifcount_0, ifcount_1, bdcnt_bctr_ci, ifcount_2, 
        ifcount_3, co0, ifcount_4, ifcount_5, co1, ifcount_6, ifcount_7, 
        co2, ifcount_8, ifcount_9, co3, cmp_ci, rden_i, co0_1, 
        co1_1, co2_1, co3_1, cmp_le_1, cmp_le_1_c, cmp_ci_1, co0_2, 
        co1_2, co2_2, co3_2, wren_i, wren_i_inv, cmp_ge_d1, cmp_ge_d1_c, 
        iwcount_0, iwcount_1, w_ctr_ci, wcount_0, wcount_1, iwcount_2, 
        iwcount_3, co0_3, wcount_2, wcount_3, iwcount_4, iwcount_5, 
        co1_3, wcount_4, wcount_5, iwcount_6, iwcount_7, co2_3, 
        wcount_6, wcount_7, iwcount_8, iwcount_9, co3_3, wcount_8, 
        wcount_9, ircount_0, ircount_1, r_ctr_ci, rcount_0, rcount_1, 
        ircount_2, ircount_3, co0_4, rcount_2, rcount_3, ircount_4, 
        ircount_5, co1_4, rcount_4, rcount_5, ircount_6, ircount_7, 
        co2_4, rcount_6, rcount_7, ircount_8, ircount_9, co3_4, 
        rcount_8, rcount_9, cmp_ci_2, co0_5, co1_5, co2_5, co3_5, 
        ae_set_d, ae_set_d_c, cmp_ci_3, co0_6, co1_6, co2_6, co3_6, 
        ae_clr_d, ae_clr_d_c, cmp_ci_4, cnt_con, co0_7, co1_7, co2_7, 
        co3_7, af_set_d, af_set_d_c, cmp_ci_5, fcnt_en_inv_inv, cnt_con_inv, 
        fcount_0, fcount_1, co0_8, fcount_2, fcount_3, co1_8, fcount_4, 
        fcount_5, co2_8, fcount_6, fcount_7, co3_8, fcount_8, fcount_9, 
        af_clr_d, scuba_vhi, scuba_vlo, af_clr_d_c;
    
    INV INV_8 (.A(Full), .Z(invout_2));
    AND2 AND2_t4 (.A(WrEn), .B(invout_2), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(182[10:54])
    AND2 AND2_t3 (.A(RdEn), .B(invout_1), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(186[10:54])
    FD1P3DX FF_48 (.D(ifcount_1), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(267[13] 268[22])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(ifcount_2), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(271[13] 272[22])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(ifcount_3), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(275[13] 276[22])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(ifcount_4), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(279[13] 280[22])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(ifcount_5), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(283[13] 284[22])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(ifcount_6), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(287[13] 288[22])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(ifcount_7), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(291[13] 292[22])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(ifcount_8), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(295[13] 296[22])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(ifcount_9), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(299[13] 300[22])
    defparam FF_40.GSR = "ENABLED";
    FD1S3BX FF_39 (.D(empty_d), .CK(Clock), .PD(Reset), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(303[13:69])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(full_d), .CK(Clock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(306[13:67])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(iwcount_0), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(309[13:85])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(iwcount_1), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(312[13:85])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(iwcount_2), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(315[13:85])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(iwcount_3), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(318[13:85])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(iwcount_4), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(321[13:85])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(iwcount_5), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(324[13:85])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(iwcount_6), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(327[13:85])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(iwcount_7), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(330[13:85])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iwcount_8), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(333[13:85])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(iwcount_9), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(336[13:85])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(ircount_0), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(339[13:85])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(ircount_1), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(342[13:85])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(ircount_2), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(345[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(ircount_3), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(348[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(ircount_4), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(351[13:85])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(ircount_5), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(354[13:85])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(ircount_6), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(357[13:85])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(ircount_7), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(360[13:85])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(ircount_8), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(363[13:85])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(ircount_9), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(366[13:85])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(ffidata_0), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(369[13:79])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(ffidata_1), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(372[13:79])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(ffidata_2), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(375[13:79])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(ffidata_3), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(378[13:79])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(ffidata_4), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(381[13:79])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(ffidata_5), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(384[13:79])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(ffidata_6), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(387[13:79])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(ffidata_7), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(390[13:79])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(ffidata_8), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(393[13:78])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(ffidata_9), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(396[13:78])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(ffidata_10), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(399[13:80])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(ffidata_11), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(402[13:80])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(ffidata_12), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[12])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(405[13:80])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(ffidata_13), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[13])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(408[13:80])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(ffidata_14), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[14])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(411[13:80])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(ffidata_15), .SP(RdEn), .CK(Clock), .CD(Reset), 
            .Q(Q[15])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(414[13:80])
    defparam FF_2.GSR = "ENABLED";
    FD1S3BX FF_1 (.D(ae_d), .CK(Clock), .PD(Reset), .Q(AlmostEmpty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(417[13:60])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(Clock), .CD(Reset), .Q(AlmostFull)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(420[13:60])
    defparam FF_0.GSR = "ENABLED";
    CCU2C bdcnt_bctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(cnt_con), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(bdcnt_bctr_ci)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(427[11] 429[52])
    defparam bdcnt_bctr_cia.INIT0 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INIT1 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INJECT1_0 = "NO";
    defparam bdcnt_bctr_cia.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_0 (.A0(fcount_0), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(bdcnt_bctr_ci), .COUT(co0), .S0(ifcount_0), .S1(ifcount_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(435[11] 437[73])
    defparam bdcnt_bctr_0.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INJECT1_0 = "NO";
    defparam bdcnt_bctr_0.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_1 (.A0(fcount_2), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(ifcount_2), .S1(ifcount_3)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(443[11] 445[63])
    defparam bdcnt_bctr_1.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INJECT1_0 = "NO";
    defparam bdcnt_bctr_1.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_2 (.A0(fcount_4), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(ifcount_4), .S1(ifcount_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(451[11] 453[63])
    defparam bdcnt_bctr_2.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INJECT1_0 = "NO";
    defparam bdcnt_bctr_2.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_3 (.A0(fcount_6), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(ifcount_6), .S1(ifcount_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(459[11] 461[63])
    defparam bdcnt_bctr_3.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INJECT1_0 = "NO";
    defparam bdcnt_bctr_3.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_4 (.A0(fcount_8), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_9), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .S0(ifcount_8), .S1(ifcount_9)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(467[11] 469[63])
    defparam bdcnt_bctr_4.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_4.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_4.INJECT1_0 = "NO";
    defparam bdcnt_bctr_4.INJECT1_1 = "NO";
    CCU2C e_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(475[11] 477[45])
    defparam e_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INJECT1_0 = "NO";
    defparam e_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C e_cmp_0 (.A0(rden_i), .B0(fcount_0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci), .COUT(co0_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(483[11] 485[50])
    defparam e_cmp_0.INIT0 = 16'b1001100110101010;
    defparam e_cmp_0.INIT1 = 16'b1001100110101010;
    defparam e_cmp_0.INJECT1_0 = "NO";
    defparam e_cmp_0.INJECT1_1 = "NO";
    CCU2C e_cmp_1 (.A0(scuba_vlo), .B0(fcount_2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(491[11] 493[49])
    defparam e_cmp_1.INIT0 = 16'b1001100110101010;
    defparam e_cmp_1.INIT1 = 16'b1001100110101010;
    defparam e_cmp_1.INJECT1_0 = "NO";
    defparam e_cmp_1.INJECT1_1 = "NO";
    CCU2C e_cmp_2 (.A0(scuba_vlo), .B0(fcount_4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(499[11] 501[49])
    defparam e_cmp_2.INIT0 = 16'b1001100110101010;
    defparam e_cmp_2.INIT1 = 16'b1001100110101010;
    defparam e_cmp_2.INJECT1_0 = "NO";
    defparam e_cmp_2.INJECT1_1 = "NO";
    CCU2C e_cmp_3 (.A0(scuba_vlo), .B0(fcount_6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(507[11] 509[49])
    defparam e_cmp_3.INIT0 = 16'b1001100110101010;
    defparam e_cmp_3.INIT1 = 16'b1001100110101010;
    defparam e_cmp_3.INJECT1_0 = "NO";
    defparam e_cmp_3.INJECT1_1 = "NO";
    CCU2C e_cmp_4 (.A0(scuba_vlo), .B0(fcount_8), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_9), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(cmp_le_1_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(515[11] 517[54])
    defparam e_cmp_4.INIT0 = 16'b1001100110101010;
    defparam e_cmp_4.INIT1 = 16'b1001100110101010;
    defparam e_cmp_4.INJECT1_0 = "NO";
    defparam e_cmp_4.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_le_1_c), .S0(cmp_le_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(523[11] 525[57])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C g_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(531[11] 533[47])
    defparam g_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INJECT1_0 = "NO";
    defparam g_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C g_cmp_0 (.A0(fcount_0), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_2)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(539[11] 541[52])
    defparam g_cmp_0.INIT0 = 16'b1001100110101010;
    defparam g_cmp_0.INIT1 = 16'b1001100110101010;
    defparam g_cmp_0.INJECT1_0 = "NO";
    defparam g_cmp_0.INJECT1_1 = "NO";
    CCU2C g_cmp_1 (.A0(fcount_2), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(547[11] 549[49])
    defparam g_cmp_1.INIT0 = 16'b1001100110101010;
    defparam g_cmp_1.INIT1 = 16'b1001100110101010;
    defparam g_cmp_1.INJECT1_0 = "NO";
    defparam g_cmp_1.INJECT1_1 = "NO";
    CCU2C g_cmp_2 (.A0(fcount_4), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(555[11] 557[49])
    defparam g_cmp_2.INIT0 = 16'b1001100110101010;
    defparam g_cmp_2.INIT1 = 16'b1001100110101010;
    defparam g_cmp_2.INJECT1_0 = "NO";
    defparam g_cmp_2.INJECT1_1 = "NO";
    CCU2C g_cmp_3 (.A0(fcount_6), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(563[11] 565[49])
    defparam g_cmp_3.INIT0 = 16'b1001100110101010;
    defparam g_cmp_3.INIT1 = 16'b1001100110101010;
    defparam g_cmp_3.INJECT1_0 = "NO";
    defparam g_cmp_3.INJECT1_1 = "NO";
    CCU2C g_cmp_4 (.A0(fcount_8), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_9), .B1(wren_i_inv), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_2), .COUT(cmp_ge_d1_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(571[11] 573[55])
    defparam g_cmp_4.INIT0 = 16'b1001100110101010;
    defparam g_cmp_4.INIT1 = 16'b1001100110101010;
    defparam g_cmp_4.INJECT1_0 = "NO";
    defparam g_cmp_4.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ge_d1_c), .S0(cmp_ge_d1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(579[11] 581[59])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C w_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(w_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(587[11] 589[47])
    defparam w_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_ctr_cia.INJECT1_0 = "NO";
    defparam w_ctr_cia.INJECT1_1 = "NO";
    CCU2C w_ctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_ctr_ci), .COUT(co0_3), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(595[11] 597[70])
    defparam w_ctr_0.INIT0 = 16'b0110011010101010;
    defparam w_ctr_0.INIT1 = 16'b0110011010101010;
    defparam w_ctr_0.INJECT1_0 = "NO";
    defparam w_ctr_0.INJECT1_1 = "NO";
    CCU2C w_ctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(603[11] 605[67])
    defparam w_ctr_1.INIT0 = 16'b0110011010101010;
    defparam w_ctr_1.INIT1 = 16'b0110011010101010;
    defparam w_ctr_1.INJECT1_0 = "NO";
    defparam w_ctr_1.INJECT1_1 = "NO";
    CCU2C w_ctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(611[11] 613[67])
    defparam w_ctr_2.INIT0 = 16'b0110011010101010;
    defparam w_ctr_2.INIT1 = 16'b0110011010101010;
    defparam w_ctr_2.INJECT1_0 = "NO";
    defparam w_ctr_2.INJECT1_1 = "NO";
    CCU2C w_ctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(619[11] 621[67])
    defparam w_ctr_3.INIT0 = 16'b0110011010101010;
    defparam w_ctr_3.INIT1 = 16'b0110011010101010;
    defparam w_ctr_3.INJECT1_0 = "NO";
    defparam w_ctr_3.INJECT1_1 = "NO";
    CCU2C w_ctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_3), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(627[11] 629[67])
    defparam w_ctr_4.INIT0 = 16'b0110011010101010;
    defparam w_ctr_4.INIT1 = 16'b0110011010101010;
    defparam w_ctr_4.INJECT1_0 = "NO";
    defparam w_ctr_4.INJECT1_1 = "NO";
    CCU2C r_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(r_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(635[11] 637[47])
    defparam r_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_ctr_cia.INJECT1_0 = "NO";
    defparam r_ctr_cia.INJECT1_1 = "NO";
    CCU2C r_ctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_ctr_ci), .COUT(co0_4), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(643[11] 645[70])
    defparam r_ctr_0.INIT0 = 16'b0110011010101010;
    defparam r_ctr_0.INIT1 = 16'b0110011010101010;
    defparam r_ctr_0.INJECT1_0 = "NO";
    defparam r_ctr_0.INJECT1_1 = "NO";
    CCU2C r_ctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(651[11] 653[67])
    defparam r_ctr_1.INIT0 = 16'b0110011010101010;
    defparam r_ctr_1.INIT1 = 16'b0110011010101010;
    defparam r_ctr_1.INJECT1_0 = "NO";
    defparam r_ctr_1.INJECT1_1 = "NO";
    CCU2C r_ctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(659[11] 661[67])
    defparam r_ctr_2.INIT0 = 16'b0110011010101010;
    defparam r_ctr_2.INIT1 = 16'b0110011010101010;
    defparam r_ctr_2.INJECT1_0 = "NO";
    defparam r_ctr_2.INJECT1_1 = "NO";
    CCU2C r_ctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .COUT(co3_4), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(667[11] 669[67])
    defparam r_ctr_3.INIT0 = 16'b0110011010101010;
    defparam r_ctr_3.INIT1 = 16'b0110011010101010;
    defparam r_ctr_3.INJECT1_0 = "NO";
    defparam r_ctr_3.INJECT1_1 = "NO";
    CCU2C r_ctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_4), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(675[11] 677[67])
    defparam r_ctr_4.INIT0 = 16'b0110011010101010;
    defparam r_ctr_4.INIT1 = 16'b0110011010101010;
    defparam r_ctr_4.INJECT1_0 = "NO";
    defparam r_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(683[11] 685[63])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(fcnt_en_inv_inv), .B0(fcount_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(cnt_con_inv), .B1(fcount_1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(691[11] 693[52])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(scuba_vlo), .B0(fcount_2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(fcount_3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(699[11] 701[49])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(scuba_vlo), .B0(fcount_4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(707[11] 709[49])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(scuba_vlo), .B0(fcount_6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(715[11] 717[49])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(scuba_vlo), .B0(fcount_8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_5), .COUT(ae_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(723[11] 725[54])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(731[11] 733[57])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(739[11] 741[63])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(fcnt_en_inv_inv), .B0(fcount_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(cnt_con), .B1(fcount_1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_6)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(747[11] 749[52])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(cnt_con_inv), .B0(fcount_2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(fcount_3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(755[11] 757[49])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(scuba_vlo), .B0(fcount_4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(763[11] 765[49])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(scuba_vlo), .B0(fcount_6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(771[11] 773[49])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(scuba_vlo), .B0(fcount_8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(fcount_9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(ae_clr_d_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(779[11] 781[54])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_clr_d_c), .S0(ae_clr_d)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(787[11] 789[57])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_4)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(795[11] 797[63])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(fcount_0), .B0(fcnt_en_inv_inv), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_1), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_4), .COUT(co0_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(803[11] 805[52])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(fcount_2), .B0(cnt_con_inv), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_3), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(811[11] 813[65])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(fcount_4), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_5), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(819[11] 821[49])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(fcount_6), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_7), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(827[11] 829[49])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(fcount_8), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_7), .COUT(af_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(835[11] 837[54])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a4 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_set_d_c), .S0(af_set_d)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(843[11] 845[57])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_5)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(851[11] 853[63])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(fcount_0), .B0(fcnt_en_inv_inv), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_1), .B1(cnt_con_inv), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_5), .COUT(co0_8)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(859[11] 861[68])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(fcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_3), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_8), .COUT(co1_8)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(867[11] 869[49])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(fcount_4), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_5), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_8), .COUT(co2_8)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(875[11] 877[49])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(fcount_6), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_7), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_8), .COUT(co3_8)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(883[11] 885[49])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(fcount_8), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_8), .COUT(af_clr_d_c)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(891[11] 893[54])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a5 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_clr_d_c), .S0(af_clr_d)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(903[11] 905[57])
    defparam a5.INIT0 = 16'b0110011010101010;
    defparam a5.INIT1 = 16'b0110011010101010;
    defparam a5.INJECT1_0 = "NO";
    defparam a5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    INV INV_7 (.A(Empty), .Z(invout_1));
    AND2 AND2_t2 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(190[10:59])
    XOR2 XOR2_t1 (.A(wren_i), .B(rden_i), .Z(fcnt_en)) /* synthesis syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(192[10:55])
    INV INV_6 (.A(rden_i), .Z(rden_i_inv));
    INV INV_5 (.A(wren_i), .Z(wren_i_inv));
    ROM16X1A LUT4_3 (.AD0(Empty), .AD1(wren_i), .AD2(cmp_le_1), .AD3(scuba_vlo), 
            .DO0(empty_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0011001000110010;
    ROM16X1A LUT4_2 (.AD0(Full), .AD1(rden_i), .AD2(cmp_ge_d1), .AD3(scuba_vlo), 
            .DO0(full_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0011001000110010;
    INV INV_3 (.A(fcnt_en), .Z(fcnt_en_inv));
    INV INV_2 (.A(cnt_con), .Z(cnt_con_inv));
    INV INV_0 (.A(fcnt_en_inv), .Z(fcnt_en_inv_inv));
    ROM16X1A LUT4_1 (.AD0(scuba_vlo), .AD1(ae_clr_d), .AD2(ae_set_d), 
            .AD3(AlmostEmpty), .DO0(ae_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0100010001010000;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(af_clr_d), .AD2(af_set_d), 
            .AD3(AlmostFull), .DO0(af_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100010001010000;
    PDPW16KD pdp_ram_0_0_0 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(scuba_vlo), .DI17(scuba_vlo), .DI18(scuba_vlo), 
            .DI19(scuba_vlo), .DI20(scuba_vlo), .DI21(scuba_vlo), .DI22(scuba_vlo), 
            .DI23(scuba_vlo), .DI24(scuba_vlo), .DI25(scuba_vlo), .DI26(scuba_vlo), 
            .DI27(scuba_vlo), .DI28(scuba_vlo), .DI29(scuba_vlo), .DI30(scuba_vlo), 
            .DI31(scuba_vlo), .DI32(scuba_vlo), .DI33(scuba_vlo), .DI34(scuba_vlo), 
            .DI35(scuba_vlo), .ADW0(wcount_0), .ADW1(wcount_1), .ADW2(wcount_2), 
            .ADW3(wcount_3), .ADW4(wcount_4), .ADW5(wcount_5), .ADW6(wcount_6), 
            .ADW7(wcount_7), .ADW8(wcount_8), .BE0(scuba_vhi), .BE1(scuba_vhi), 
            .BE2(scuba_vhi), .BE3(scuba_vhi), .CEW(wren_i), .CLKW(Clock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(scuba_vlo), 
            .ADR5(rcount_0), .ADR6(rcount_1), .ADR7(rcount_2), .ADR8(rcount_3), 
            .ADR9(rcount_4), .ADR10(rcount_5), .ADR11(rcount_6), .ADR12(rcount_7), 
            .ADR13(rcount_8), .CER(rden_i), .OCER(rden_i), .CLKR(Clock), 
            .CSR0(scuba_vlo), .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), 
            .DO18(ffidata_0), .DO19(ffidata_1), .DO20(ffidata_2), .DO21(ffidata_3), 
            .DO22(ffidata_4), .DO23(ffidata_5), .DO24(ffidata_6), .DO25(ffidata_7), 
            .DO26(ffidata_8), .DO27(ffidata_9), .DO28(ffidata_10), .DO29(ffidata_11), 
            .DO30(ffidata_12), .DO31(ffidata_13), .DO32(ffidata_14), .DO33(ffidata_15)) /* synthesis MEM_LPC_FILE="fifo_16.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_W = 36;
    defparam pdp_ram_0_0_0.DATA_WIDTH_R = 36;
    defparam pdp_ram_0_0_0.GSR = "ENABLED";
    defparam pdp_ram_0_0_0.REGMODE = "NOREG";
    defparam pdp_ram_0_0_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_0.CSDECODE_W = "0b001";
    defparam pdp_ram_0_0_0.CSDECODE_R = "0b000";
    defparam pdp_ram_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INIT_DATA = "STATIC";
    FD1P3DX FF_49 (.D(ifcount_0), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/vvik/workspace/tsaric/Nuts2Latt/srclib/crarity_gen/fifo16/fifo_16/fifo_16.v(263[13] 264[22])
    defparam FF_49.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

