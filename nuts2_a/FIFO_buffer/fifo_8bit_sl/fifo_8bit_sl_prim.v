// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Fri Jul 05 18:26:02 2019
//
// Verilog Description of module fifo_8bit_sl
//

module fifo_8bit_sl (Data, WrClock, RdClock, WrEn, RdEn, Reset, 
            RPReset, Q, Empty, Full, AlmostEmpty, AlmostFull) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(8[8:20])
    input [7:0]Data;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(10[22:26])
    input WrClock;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(11[16:23])
    input RdClock;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(12[16:23])
    input WrEn;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(13[16:20])
    input RdEn;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(14[16:20])
    input Reset;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(15[16:21])
    input RPReset;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(16[16:23])
    output [7:0]Q;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(17[23:24])
    output Empty;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(18[17:22])
    output Full;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(19[17:21])
    output AlmostEmpty;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(20[17:28])
    output AlmostFull;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(21[17:27])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_2_1, w_g2b_xor_cluster_3, 
        w_g2b_xor_cluster_3_1, w_g2b_xor_cluster_2, w_g2b_xor_cluster_1, 
        r_g2b_xor_cluster_2_1, r_g2b_xor_cluster_3, r_g2b_xor_cluster_3_1, 
        r_g2b_xor_cluster_2, r_g2b_xor_cluster_1, w_gdata_0, w_gdata_1, 
        w_gdata_2, w_gdata_3, w_gdata_4, w_gdata_5, w_gdata_6, w_gdata_7, 
        w_gdata_8, w_gdata_9, w_gdata_10, w_gdata_11, w_gdata_12, 
        w_gdata_13, wptr_0, wptr_1, wptr_2, wptr_3, wptr_4, wptr_5, 
        wptr_6, wptr_7, wptr_8, wptr_9, wptr_10, wptr_11, wptr_12, 
        wptr_13, wptr_14, r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, 
        r_gdata_4, r_gdata_5, r_gdata_6, r_gdata_7, r_gdata_8, r_gdata_9, 
        r_gdata_10, r_gdata_11, r_gdata_12, r_gdata_13, rptr_0, rptr_1, 
        rptr_2, rptr_3, rptr_4, rptr_5, rptr_6, rptr_7, rptr_8, 
        rptr_9, rptr_10, rptr_11, rptr_12, rptr_13, rptr_14, w_gcount_0, 
        w_gcount_1, w_gcount_2, w_gcount_3, w_gcount_4, w_gcount_5, 
        w_gcount_6, w_gcount_7, w_gcount_8, w_gcount_9, w_gcount_10, 
        w_gcount_11, w_gcount_12, w_gcount_13, w_gcount_14, r_gcount_0, 
        r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, r_gcount_5, 
        r_gcount_6, r_gcount_7, r_gcount_8, r_gcount_9, r_gcount_10, 
        r_gcount_11, r_gcount_12, r_gcount_13, r_gcount_14, w_gcount_r20, 
        w_gcount_r0, w_gcount_r21, w_gcount_r1, w_gcount_r22, w_gcount_r2, 
        w_gcount_r23, w_gcount_r3, w_gcount_r24, w_gcount_r4, w_gcount_r25, 
        w_gcount_r5, w_gcount_r26, w_gcount_r6, w_gcount_r27, w_gcount_r7, 
        w_gcount_r28, w_gcount_r8, w_gcount_r29, w_gcount_r9, w_gcount_r210, 
        w_gcount_r10, w_gcount_r211, w_gcount_r11, w_gcount_r212, w_gcount_r12, 
        w_gcount_r213, w_gcount_r13, w_gcount_r214, w_gcount_r14, r_gcount_w20, 
        r_gcount_w0, r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, 
        r_gcount_w23, r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, 
        r_gcount_w5, r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, 
        r_gcount_w28, r_gcount_w8, r_gcount_w29, r_gcount_w9, r_gcount_w210, 
        r_gcount_w10, r_gcount_w211, r_gcount_w11, r_gcount_w212, r_gcount_w12, 
        r_gcount_w213, r_gcount_w13, r_gcount_w214, r_gcount_w14, rRst, 
        ae_d, af_d, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, 
        iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, 
        co2, iwcount_8, iwcount_9, co3, iwcount_10, iwcount_11, 
        co4, iwcount_12, iwcount_13, co5, iwcount_14, co6, wcount_14, 
        ircount_0, ircount_1, r_gctr_ci, ircount_2, ircount_3, co0_1, 
        ircount_4, ircount_5, co1_1, ircount_6, ircount_7, co2_1, 
        ircount_8, ircount_9, co3_1, ircount_10, ircount_11, co4_1, 
        ircount_12, ircount_13, co5_1, ircount_14, co6_1, rcount_14, 
        cmp_ci, rcount_0, rcount_1, co0_2, rcount_2, rcount_3, co1_2, 
        rcount_4, rcount_5, co2_2, rcount_6, rcount_7, co3_2, rcount_8, 
        rcount_9, co4_2, rcount_10, rcount_11, co5_2, rcount_12, 
        rcount_13, co6_2, empty_cmp_clr, empty_cmp_set, empty_d, empty_d_c, 
        cmp_ci_1, wcount_0, wcount_1, co0_3, wcount_2, wcount_3, 
        co1_3, wcount_4, wcount_5, co2_3, wcount_6, wcount_7, co3_3, 
        wcount_8, wcount_9, co4_3, wcount_10, wcount_11, co5_3, 
        wcount_12, wcount_13, co6_3, full_cmp_clr, full_cmp_set, full_d, 
        full_d_c, iae_setcount_0, iae_setcount_1, ae_set_ctr_ci, iae_setcount_2, 
        iae_setcount_3, co0_4, iae_setcount_4, iae_setcount_5, co1_4, 
        iae_setcount_6, iae_setcount_7, co2_4, iae_setcount_8, iae_setcount_9, 
        co3_4, iae_setcount_10, iae_setcount_11, co4_4, iae_setcount_12, 
        iae_setcount_13, co5_4, iae_setcount_14, co6_4, ae_setcount_14, 
        cmp_ci_2, ae_setcount_0, ae_setcount_1, co0_5, ae_setcount_2, 
        ae_setcount_3, co1_5, ae_setcount_4, ae_setcount_5, co2_5, 
        ae_setcount_6, ae_setcount_7, co3_5, ae_setcount_8, ae_setcount_9, 
        co4_5, ae_setcount_10, ae_setcount_11, co5_5, ae_setcount_12, 
        ae_setcount_13, co6_5, ae_set_cmp_clr, ae_set_cmp_set, ae_set_d, 
        ae_set_d_c, iae_clrcount_0, iae_clrcount_1, ae_clr_ctr_ci, iae_clrcount_2, 
        iae_clrcount_3, co0_6, iae_clrcount_4, iae_clrcount_5, co1_6, 
        iae_clrcount_6, iae_clrcount_7, co2_6, iae_clrcount_8, iae_clrcount_9, 
        co3_6, iae_clrcount_10, iae_clrcount_11, co4_6, iae_clrcount_12, 
        iae_clrcount_13, co5_6, iae_clrcount_14, co6_6, ae_clrcount_14, 
        rden_i, cmp_ci_3, wcount_r0, wcount_r1, ae_clrcount_0, ae_clrcount_1, 
        co0_7, wcount_r2, wcount_r3, ae_clrcount_2, ae_clrcount_3, 
        co1_7, wcount_r4, wcount_r5, ae_clrcount_4, ae_clrcount_5, 
        co2_7, wcount_r6, wcount_r7, ae_clrcount_6, ae_clrcount_7, 
        co3_7, wcount_r8, wcount_r9, ae_clrcount_8, ae_clrcount_9, 
        co4_7, wcount_r10, w_g2b_xor_cluster_0, ae_clrcount_10, ae_clrcount_11, 
        co5_7, wcount_r12, wcount_r13, ae_clrcount_12, ae_clrcount_13, 
        co6_7, ae_clr_cmp_clr, ae_clr_cmp_set, ae_clr_d, ae_clr_d_c, 
        iaf_setcount_0, iaf_setcount_1, af_set_ctr_ci, iaf_setcount_2, 
        iaf_setcount_3, co0_8, iaf_setcount_4, iaf_setcount_5, co1_8, 
        iaf_setcount_6, iaf_setcount_7, co2_8, iaf_setcount_8, iaf_setcount_9, 
        co3_8, iaf_setcount_10, iaf_setcount_11, co4_8, iaf_setcount_12, 
        iaf_setcount_13, co5_8, iaf_setcount_14, co6_8, af_setcount_14, 
        cmp_ci_4, af_setcount_0, af_setcount_1, co0_9, af_setcount_2, 
        af_setcount_3, co1_9, af_setcount_4, af_setcount_5, co2_9, 
        af_setcount_6, af_setcount_7, co3_9, af_setcount_8, af_setcount_9, 
        co4_9, af_setcount_10, af_setcount_11, co5_9, af_setcount_12, 
        af_setcount_13, co6_9, af_set_cmp_clr, af_set_cmp_set, af_set, 
        af_set_c, iaf_clrcount_0, iaf_clrcount_1, af_clr_ctr_ci, iaf_clrcount_2, 
        iaf_clrcount_3, co0_10, iaf_clrcount_4, iaf_clrcount_5, co1_10, 
        iaf_clrcount_6, iaf_clrcount_7, co2_10, iaf_clrcount_8, iaf_clrcount_9, 
        co3_10, iaf_clrcount_10, iaf_clrcount_11, co4_10, iaf_clrcount_12, 
        iaf_clrcount_13, co5_10, iaf_clrcount_14, co6_10, af_clrcount_14, 
        wren_i, cmp_ci_5, rcount_w0, rcount_w1, af_clrcount_0, af_clrcount_1, 
        co0_11, rcount_w2, rcount_w3, af_clrcount_2, af_clrcount_3, 
        co1_11, rcount_w4, rcount_w5, af_clrcount_4, af_clrcount_5, 
        co2_11, rcount_w6, rcount_w7, af_clrcount_6, af_clrcount_7, 
        co3_11, rcount_w8, rcount_w9, af_clrcount_8, af_clrcount_9, 
        co4_11, rcount_w10, r_g2b_xor_cluster_0, af_clrcount_10, af_clrcount_11, 
        co5_11, rcount_w12, rcount_w13, af_clrcount_12, af_clrcount_13, 
        co6_11, af_clr_cmp_clr, af_clr_cmp_set, af_clr, scuba_vhi, 
        scuba_vlo, af_clr_c;
    
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3DX FF_212 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1119[13] 1120[22])
    defparam FF_212.GSR = "ENABLED";
    FD1P3DX FF_211 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1123[13] 1124[22])
    defparam FF_211.GSR = "ENABLED";
    FD1P3DX FF_210 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1127[13] 1128[22])
    defparam FF_210.GSR = "ENABLED";
    FD1P3DX FF_209 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1131[13] 1132[22])
    defparam FF_209.GSR = "ENABLED";
    FD1P3DX FF_208 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1135[13] 1136[22])
    defparam FF_208.GSR = "ENABLED";
    FD1P3DX FF_207 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1139[13] 1140[22])
    defparam FF_207.GSR = "ENABLED";
    FD1P3DX FF_206 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1143[13] 1144[22])
    defparam FF_206.GSR = "ENABLED";
    FD1P3DX FF_205 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1147[13] 1148[22])
    defparam FF_205.GSR = "ENABLED";
    FD1P3DX FF_204 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1151[13] 1152[22])
    defparam FF_204.GSR = "ENABLED";
    FD1P3DX FF_203 (.D(iwcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1155[13] 1156[23])
    defparam FF_203.GSR = "ENABLED";
    FD1P3DX FF_202 (.D(iwcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1159[13] 1160[23])
    defparam FF_202.GSR = "ENABLED";
    FD1P3DX FF_201 (.D(iwcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1163[13] 1164[23])
    defparam FF_201.GSR = "ENABLED";
    FD1P3DX FF_200 (.D(iwcount_13), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1167[13] 1168[23])
    defparam FF_200.GSR = "ENABLED";
    FD1P3DX FF_199 (.D(iwcount_14), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1171[13] 1172[23])
    defparam FF_199.GSR = "ENABLED";
    FD1P3DX FF_198 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1175[13] 1176[24])
    defparam FF_198.GSR = "ENABLED";
    FD1P3DX FF_197 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1179[13] 1180[24])
    defparam FF_197.GSR = "ENABLED";
    FD1P3DX FF_196 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1183[13] 1184[24])
    defparam FF_196.GSR = "ENABLED";
    FD1P3DX FF_195 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1187[13] 1188[24])
    defparam FF_195.GSR = "ENABLED";
    FD1P3DX FF_194 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1191[13] 1192[24])
    defparam FF_194.GSR = "ENABLED";
    FD1P3DX FF_193 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1195[13] 1196[24])
    defparam FF_193.GSR = "ENABLED";
    FD1P3DX FF_192 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1199[13] 1200[24])
    defparam FF_192.GSR = "ENABLED";
    FD1P3DX FF_191 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1203[13] 1204[24])
    defparam FF_191.GSR = "ENABLED";
    FD1P3DX FF_190 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1207[13] 1208[24])
    defparam FF_190.GSR = "ENABLED";
    FD1P3DX FF_189 (.D(w_gdata_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1211[13] 1212[24])
    defparam FF_189.GSR = "ENABLED";
    FD1P3DX FF_188 (.D(w_gdata_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1215[13] 1216[25])
    defparam FF_188.GSR = "ENABLED";
    FD1P3DX FF_187 (.D(w_gdata_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1219[13] 1220[25])
    defparam FF_187.GSR = "ENABLED";
    FD1P3DX FF_186 (.D(w_gdata_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1223[13] 1224[25])
    defparam FF_186.GSR = "ENABLED";
    FD1P3DX FF_185 (.D(w_gdata_13), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1227[13] 1228[25])
    defparam FF_185.GSR = "ENABLED";
    FD1P3DX FF_184 (.D(wcount_14), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1231[13] 1232[25])
    defparam FF_184.GSR = "ENABLED";
    FD1P3DX FF_183 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1235[13] 1236[20])
    defparam FF_183.GSR = "ENABLED";
    FD1P3DX FF_182 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1239[13] 1240[20])
    defparam FF_182.GSR = "ENABLED";
    FD1P3DX FF_181 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1243[13] 1244[20])
    defparam FF_181.GSR = "ENABLED";
    FD1P3DX FF_180 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1247[13] 1248[20])
    defparam FF_180.GSR = "ENABLED";
    FD1P3DX FF_179 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1251[13] 1252[20])
    defparam FF_179.GSR = "ENABLED";
    FD1P3DX FF_178 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1255[13] 1256[20])
    defparam FF_178.GSR = "ENABLED";
    FD1P3DX FF_177 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1259[13] 1260[20])
    defparam FF_177.GSR = "ENABLED";
    FD1P3DX FF_176 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1263[13] 1264[20])
    defparam FF_176.GSR = "ENABLED";
    FD1P3DX FF_175 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1267[13] 1268[20])
    defparam FF_175.GSR = "ENABLED";
    FD1P3DX FF_174 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1271[13] 1272[20])
    defparam FF_174.GSR = "ENABLED";
    FD1P3DX FF_173 (.D(wcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1275[13] 1276[21])
    defparam FF_173.GSR = "ENABLED";
    FD1P3DX FF_172 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1279[13] 1280[21])
    defparam FF_172.GSR = "ENABLED";
    FD1P3DX FF_171 (.D(wcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1283[13] 1284[21])
    defparam FF_171.GSR = "ENABLED";
    FD1P3DX FF_170 (.D(wcount_13), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1287[13] 1288[21])
    defparam FF_170.GSR = "ENABLED";
    FD1P3DX FF_169 (.D(wcount_14), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1291[13] 1292[21])
    defparam FF_169.GSR = "ENABLED";
    FD1P3BX FF_168 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1295[13] 1296[22])
    defparam FF_168.GSR = "ENABLED";
    FD1P3DX FF_167 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1299[13] 1300[22])
    defparam FF_167.GSR = "ENABLED";
    FD1P3DX FF_166 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1303[13] 1304[22])
    defparam FF_166.GSR = "ENABLED";
    FD1P3DX FF_165 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1307[13] 1308[22])
    defparam FF_165.GSR = "ENABLED";
    FD1P3DX FF_164 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1311[13] 1312[22])
    defparam FF_164.GSR = "ENABLED";
    FD1P3DX FF_163 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1315[13] 1316[22])
    defparam FF_163.GSR = "ENABLED";
    FD1P3DX FF_162 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1319[13] 1320[22])
    defparam FF_162.GSR = "ENABLED";
    FD1P3DX FF_161 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1323[13] 1324[22])
    defparam FF_161.GSR = "ENABLED";
    FD1P3DX FF_160 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1327[13] 1328[22])
    defparam FF_160.GSR = "ENABLED";
    FD1P3DX FF_159 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1331[13] 1332[22])
    defparam FF_159.GSR = "ENABLED";
    FD1P3DX FF_158 (.D(ircount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1335[13] 1336[23])
    defparam FF_158.GSR = "ENABLED";
    FD1P3DX FF_157 (.D(ircount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1339[13] 1340[23])
    defparam FF_157.GSR = "ENABLED";
    FD1P3DX FF_156 (.D(ircount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1343[13] 1344[23])
    defparam FF_156.GSR = "ENABLED";
    FD1P3DX FF_155 (.D(ircount_13), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1347[13] 1348[23])
    defparam FF_155.GSR = "ENABLED";
    FD1P3DX FF_154 (.D(ircount_14), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1351[13] 1352[23])
    defparam FF_154.GSR = "ENABLED";
    FD1P3DX FF_153 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1355[13] 1356[24])
    defparam FF_153.GSR = "ENABLED";
    FD1P3DX FF_152 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1359[13] 1360[24])
    defparam FF_152.GSR = "ENABLED";
    FD1P3DX FF_151 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1363[13] 1364[24])
    defparam FF_151.GSR = "ENABLED";
    FD1P3DX FF_150 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1367[13] 1368[24])
    defparam FF_150.GSR = "ENABLED";
    FD1P3DX FF_149 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1371[13] 1372[24])
    defparam FF_149.GSR = "ENABLED";
    FD1P3DX FF_148 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1375[13] 1376[24])
    defparam FF_148.GSR = "ENABLED";
    FD1P3DX FF_147 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1379[13] 1380[24])
    defparam FF_147.GSR = "ENABLED";
    FD1P3DX FF_146 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1383[13] 1384[24])
    defparam FF_146.GSR = "ENABLED";
    FD1P3DX FF_145 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1387[13] 1388[24])
    defparam FF_145.GSR = "ENABLED";
    FD1P3DX FF_144 (.D(r_gdata_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1391[13] 1392[24])
    defparam FF_144.GSR = "ENABLED";
    FD1P3DX FF_143 (.D(r_gdata_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1395[13] 1396[25])
    defparam FF_143.GSR = "ENABLED";
    FD1P3DX FF_142 (.D(r_gdata_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1399[13] 1400[25])
    defparam FF_142.GSR = "ENABLED";
    FD1P3DX FF_141 (.D(r_gdata_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1403[13] 1404[25])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(r_gdata_13), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1407[13] 1408[25])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(rcount_14), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1411[13] 1412[25])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_138 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1415[13] 1416[20])
    defparam FF_138.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1419[13] 1420[20])
    defparam FF_137.GSR = "ENABLED";
    FD1P3DX FF_136 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1423[13] 1424[20])
    defparam FF_136.GSR = "ENABLED";
    FD1P3DX FF_135 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1427[13] 1428[20])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1431[13] 1432[20])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1435[13] 1436[20])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1439[13] 1440[20])
    defparam FF_132.GSR = "ENABLED";
    FD1P3DX FF_131 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1443[13] 1444[20])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_130 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1447[13] 1448[20])
    defparam FF_130.GSR = "ENABLED";
    FD1P3DX FF_129 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1451[13] 1452[20])
    defparam FF_129.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1455[13] 1456[21])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(rcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1459[13] 1460[21])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(rcount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1463[13] 1464[21])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(rcount_13), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1467[13] 1468[21])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(rcount_14), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1471[13] 1472[21])
    defparam FF_124.GSR = "ENABLED";
    FD1S3DX FF_123 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1475[13:79])
    defparam FF_123.GSR = "ENABLED";
    FD1S3DX FF_122 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1478[13:79])
    defparam FF_122.GSR = "ENABLED";
    FD1S3DX FF_121 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1481[13:79])
    defparam FF_121.GSR = "ENABLED";
    FD1S3DX FF_120 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1484[13:79])
    defparam FF_120.GSR = "ENABLED";
    FD1S3DX FF_119 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1487[13:79])
    defparam FF_119.GSR = "ENABLED";
    FD1S3DX FF_118 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1490[13:79])
    defparam FF_118.GSR = "ENABLED";
    FD1S3DX FF_117 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1493[13:79])
    defparam FF_117.GSR = "ENABLED";
    FD1S3DX FF_116 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1496[13:79])
    defparam FF_116.GSR = "ENABLED";
    FD1S3DX FF_115 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1499[13:79])
    defparam FF_115.GSR = "ENABLED";
    FD1S3DX FF_114 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1502[13:79])
    defparam FF_114.GSR = "ENABLED";
    FD1S3DX FF_113 (.D(w_gcount_10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1505[13:81])
    defparam FF_113.GSR = "ENABLED";
    FD1S3DX FF_112 (.D(w_gcount_11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1508[13:81])
    defparam FF_112.GSR = "ENABLED";
    FD1S3DX FF_111 (.D(w_gcount_12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1511[13:81])
    defparam FF_111.GSR = "ENABLED";
    FD1S3DX FF_110 (.D(w_gcount_13), .CK(RdClock), .CD(Reset), .Q(w_gcount_r13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1514[13:81])
    defparam FF_110.GSR = "ENABLED";
    FD1S3DX FF_109 (.D(w_gcount_14), .CK(RdClock), .CD(Reset), .Q(w_gcount_r14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1517[13:81])
    defparam FF_109.GSR = "ENABLED";
    FD1S3DX FF_108 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1520[13:78])
    defparam FF_108.GSR = "ENABLED";
    FD1S3DX FF_107 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1523[13:78])
    defparam FF_107.GSR = "ENABLED";
    FD1S3DX FF_106 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1526[13:78])
    defparam FF_106.GSR = "ENABLED";
    FD1S3DX FF_105 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1529[13:78])
    defparam FF_105.GSR = "ENABLED";
    FD1S3DX FF_104 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1532[13:78])
    defparam FF_104.GSR = "ENABLED";
    FD1S3DX FF_103 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1535[13:78])
    defparam FF_103.GSR = "ENABLED";
    FD1S3DX FF_102 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1538[13:78])
    defparam FF_102.GSR = "ENABLED";
    FD1S3DX FF_101 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1541[13:78])
    defparam FF_101.GSR = "ENABLED";
    FD1S3DX FF_100 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1544[13:78])
    defparam FF_100.GSR = "ENABLED";
    FD1S3DX FF_99 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1547[13:77])
    defparam FF_99.GSR = "ENABLED";
    FD1S3DX FF_98 (.D(r_gcount_10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1550[13:79])
    defparam FF_98.GSR = "ENABLED";
    FD1S3DX FF_97 (.D(r_gcount_11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1553[13:79])
    defparam FF_97.GSR = "ENABLED";
    FD1S3DX FF_96 (.D(r_gcount_12), .CK(WrClock), .CD(rRst), .Q(r_gcount_w12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1556[13:79])
    defparam FF_96.GSR = "ENABLED";
    FD1S3DX FF_95 (.D(r_gcount_13), .CK(WrClock), .CD(rRst), .Q(r_gcount_w13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1559[13:79])
    defparam FF_95.GSR = "ENABLED";
    FD1S3DX FF_94 (.D(r_gcount_14), .CK(WrClock), .CD(rRst), .Q(r_gcount_w14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1562[13:79])
    defparam FF_94.GSR = "ENABLED";
    FD1S3DX FF_93 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1565[13:80])
    defparam FF_93.GSR = "ENABLED";
    FD1S3DX FF_92 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1568[13:80])
    defparam FF_92.GSR = "ENABLED";
    FD1S3DX FF_91 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1571[13:80])
    defparam FF_91.GSR = "ENABLED";
    FD1S3DX FF_90 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1574[13:80])
    defparam FF_90.GSR = "ENABLED";
    FD1S3DX FF_89 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1577[13:80])
    defparam FF_89.GSR = "ENABLED";
    FD1S3DX FF_88 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1580[13:80])
    defparam FF_88.GSR = "ENABLED";
    FD1S3DX FF_87 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1583[13:80])
    defparam FF_87.GSR = "ENABLED";
    FD1S3DX FF_86 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1586[13:80])
    defparam FF_86.GSR = "ENABLED";
    FD1S3DX FF_85 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1589[13:80])
    defparam FF_85.GSR = "ENABLED";
    FD1S3DX FF_84 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1592[13:80])
    defparam FF_84.GSR = "ENABLED";
    FD1S3DX FF_83 (.D(w_gcount_r10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1595[13:82])
    defparam FF_83.GSR = "ENABLED";
    FD1S3DX FF_82 (.D(w_gcount_r11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1598[13:82])
    defparam FF_82.GSR = "ENABLED";
    FD1S3DX FF_81 (.D(w_gcount_r12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r212)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1601[13:82])
    defparam FF_81.GSR = "ENABLED";
    FD1S3DX FF_80 (.D(w_gcount_r13), .CK(RdClock), .CD(Reset), .Q(w_gcount_r213)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1604[13:82])
    defparam FF_80.GSR = "ENABLED";
    FD1S3DX FF_79 (.D(w_gcount_r14), .CK(RdClock), .CD(Reset), .Q(w_gcount_r214)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1607[13:82])
    defparam FF_79.GSR = "ENABLED";
    FD1S3DX FF_78 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1610[13:79])
    defparam FF_78.GSR = "ENABLED";
    FD1S3DX FF_77 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1613[13:79])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_76 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1616[13:79])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1619[13:79])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1622[13:79])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1625[13:79])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1628[13:79])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1631[13:79])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1634[13:79])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1637[13:79])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(r_gcount_w10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1640[13:81])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(r_gcount_w11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1643[13:81])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_w12), .CK(WrClock), .CD(rRst), .Q(r_gcount_w212)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1646[13:81])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(r_gcount_w13), .CK(WrClock), .CD(rRst), .Q(r_gcount_w213)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1649[13:81])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_w14), .CK(WrClock), .CD(rRst), .Q(r_gcount_w214)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1652[13:81])
    defparam FF_64.GSR = "ENABLED";
    FD1S3BX FF_63 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1655[13:70])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1658[13:69])
    defparam FF_62.GSR = "ENABLED";
    FD1P3BX FF_61 (.D(iae_setcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1661[13] 1662[27])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(iae_setcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1665[13] 1666[27])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(iae_setcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1669[13] 1670[27])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(iae_setcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1673[13] 1674[27])
    defparam FF_58.GSR = "ENABLED";
    FD1P3BX FF_57 (.D(iae_setcount_4), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1677[13] 1678[27])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(iae_setcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1681[13] 1682[27])
    defparam FF_56.GSR = "ENABLED";
    FD1P3BX FF_55 (.D(iae_setcount_6), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1685[13] 1686[27])
    defparam FF_55.GSR = "ENABLED";
    FD1P3BX FF_54 (.D(iae_setcount_7), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1689[13] 1690[27])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(iae_setcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1693[13] 1694[27])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(iae_setcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1697[13] 1698[27])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(iae_setcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1701[13] 1702[28])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(iae_setcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1705[13] 1706[28])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(iae_setcount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1709[13] 1710[28])
    defparam FF_49.GSR = "ENABLED";
    FD1P3BX FF_48 (.D(iae_setcount_13), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1713[13] 1714[28])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(iae_setcount_14), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1717[13] 1718[28])
    defparam FF_47.GSR = "ENABLED";
    FD1P3BX FF_46 (.D(iae_clrcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1721[13] 1722[27])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(iae_clrcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1725[13] 1726[27])
    defparam FF_45.GSR = "ENABLED";
    FD1P3BX FF_44 (.D(iae_clrcount_2), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1729[13] 1730[27])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(iae_clrcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1733[13] 1734[27])
    defparam FF_43.GSR = "ENABLED";
    FD1P3BX FF_42 (.D(iae_clrcount_4), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1737[13] 1738[27])
    defparam FF_42.GSR = "ENABLED";
    FD1P3BX FF_41 (.D(iae_clrcount_5), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1741[13] 1742[27])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(iae_clrcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1745[13] 1746[27])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(iae_clrcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1749[13] 1750[27])
    defparam FF_39.GSR = "ENABLED";
    FD1P3BX FF_38 (.D(iae_clrcount_8), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1753[13] 1754[27])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(iae_clrcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1757[13] 1758[27])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(iae_clrcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1761[13] 1762[28])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(iae_clrcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1765[13] 1766[28])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(iae_clrcount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1769[13] 1770[28])
    defparam FF_34.GSR = "ENABLED";
    FD1P3BX FF_33 (.D(iae_clrcount_13), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1773[13] 1774[28])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(iae_clrcount_14), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1777[13] 1778[28])
    defparam FF_32.GSR = "ENABLED";
    FD1S3BX FF_31 (.D(ae_d), .CK(RdClock), .PD(rRst), .Q(AlmostEmpty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1781[13:62])
    defparam FF_31.GSR = "ENABLED";
    FD1P3BX FF_30 (.D(iaf_setcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1784[13] 1785[27])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iaf_setcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1788[13] 1789[27])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(iaf_setcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1792[13] 1793[27])
    defparam FF_28.GSR = "ENABLED";
    FD1P3BX FF_27 (.D(iaf_setcount_3), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1796[13] 1797[27])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(iaf_setcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1800[13] 1801[27])
    defparam FF_26.GSR = "ENABLED";
    FD1P3BX FF_25 (.D(iaf_setcount_5), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1804[13] 1805[27])
    defparam FF_25.GSR = "ENABLED";
    FD1P3BX FF_24 (.D(iaf_setcount_6), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1808[13] 1809[27])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iaf_setcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1812[13] 1813[27])
    defparam FF_23.GSR = "ENABLED";
    FD1P3BX FF_22 (.D(iaf_setcount_8), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1816[13] 1817[27])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iaf_setcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1820[13] 1821[27])
    defparam FF_21.GSR = "ENABLED";
    FD1P3BX FF_20 (.D(iaf_setcount_10), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1824[13] 1825[28])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(iaf_setcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1828[13] 1829[28])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iaf_setcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1832[13] 1833[28])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iaf_setcount_13), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1836[13] 1837[28])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iaf_setcount_14), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1840[13] 1841[28])
    defparam FF_16.GSR = "ENABLED";
    FD1P3BX FF_15 (.D(iaf_clrcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1844[13] 1845[27])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iaf_clrcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1848[13] 1849[27])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(iaf_clrcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1852[13] 1853[27])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(iaf_clrcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1856[13] 1857[27])
    defparam FF_12.GSR = "ENABLED";
    FD1P3BX FF_11 (.D(iaf_clrcount_4), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1860[13] 1861[27])
    defparam FF_11.GSR = "ENABLED";
    FD1P3BX FF_10 (.D(iaf_clrcount_5), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1864[13] 1865[27])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(iaf_clrcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1868[13] 1869[27])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iaf_clrcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1872[13] 1873[27])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(iaf_clrcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1876[13] 1877[27])
    defparam FF_7.GSR = "ENABLED";
    FD1P3BX FF_6 (.D(iaf_clrcount_9), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1880[13] 1881[27])
    defparam FF_6.GSR = "ENABLED";
    FD1P3BX FF_5 (.D(iaf_clrcount_10), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1884[13] 1885[28])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iaf_clrcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1888[13] 1889[28])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(iaf_clrcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1892[13] 1893[28])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(iaf_clrcount_13), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1896[13] 1897[28])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_clrcount_14), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1900[13] 1901[28])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(WrClock), .CD(Reset), .Q(AlmostFull)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1904[13:62])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1911[11] 1913[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1919[11] 1921[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1927[11] 1929[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1935[11] 1937[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1943[11] 1945[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1951[11] 1953[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .COUT(co5), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1959[11] 1961[65])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C w_gctr_6 (.A0(wcount_12), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_13), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5), .COUT(co6), .S0(iwcount_12), .S1(iwcount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1967[11] 1969[65])
    defparam w_gctr_6.INIT0 = 16'b0110011010101010;
    defparam w_gctr_6.INIT1 = 16'b0110011010101010;
    defparam w_gctr_6.INJECT1_0 = "NO";
    defparam w_gctr_6.INJECT1_1 = "NO";
    CCU2C w_gctr_7 (.A0(wcount_14), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co6), .S0(iwcount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1975[11] 1977[55])
    defparam w_gctr_7.INIT0 = 16'b0110011010101010;
    defparam w_gctr_7.INIT1 = 16'b0110011010101010;
    defparam w_gctr_7.INJECT1_0 = "NO";
    defparam w_gctr_7.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1983[11] 1985[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1991[11] 1993[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1999[11] 2001[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2007[11] 2009[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2015[11] 2017[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2023[11] 2025[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .COUT(co5_1), .S0(ircount_10), .S1(ircount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2031[11] 2033[69])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C r_gctr_6 (.A0(rcount_12), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_13), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5_1), .COUT(co6_1), .S0(ircount_12), .S1(ircount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2039[11] 2041[69])
    defparam r_gctr_6.INIT0 = 16'b0110011010101010;
    defparam r_gctr_6.INIT1 = 16'b0110011010101010;
    defparam r_gctr_6.INJECT1_0 = "NO";
    defparam r_gctr_6.INJECT1_1 = "NO";
    CCU2C r_gctr_7 (.A0(rcount_14), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co6_1), .S0(ircount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2047[11] 2049[59])
    defparam r_gctr_7.INIT0 = 16'b0110011010101010;
    defparam r_gctr_7.INIT1 = 16'b0110011010101010;
    defparam r_gctr_7.INJECT1_0 = "NO";
    defparam r_gctr_7.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2055[11] 2057[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2063[11] 2065[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2071[11] 2073[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2079[11] 2081[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2087[11] 2089[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(wcount_r8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_9), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .COUT(co4_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2095[11] 2097[49])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(rcount_10), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_11), .B1(w_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_2), .COUT(co5_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2103[11] 2105[65])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_6 (.A0(rcount_12), .B0(wcount_r12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_13), .B1(wcount_r13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_2), .COUT(co6_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2111[11] 2113[65])
    defparam empty_cmp_6.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_6.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_6.INJECT1_0 = "NO";
    defparam empty_cmp_6.INJECT1_1 = "NO";
    CCU2C empty_cmp_7 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_2), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2119[11] 2121[69])
    defparam empty_cmp_7.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_7.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_7.INJECT1_0 = "NO";
    defparam empty_cmp_7.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2127[11] 2129[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2135[11] 2137[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2143[11] 2145[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2151[11] 2153[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2159[11] 2161[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2167[11] 2169[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(rcount_w8), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(rcount_w9), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_3), .COUT(co4_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2175[11] 2177[49])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_11), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_3), .COUT(co5_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2183[11] 2185[49])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    CCU2C full_cmp_6 (.A0(wcount_12), .B0(rcount_w12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_13), .B1(rcount_w13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_3), .COUT(co6_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2191[11] 2193[49])
    defparam full_cmp_6.INIT0 = 16'b1001100110101010;
    defparam full_cmp_6.INIT1 = 16'b1001100110101010;
    defparam full_cmp_6.INJECT1_0 = "NO";
    defparam full_cmp_6.INJECT1_1 = "NO";
    CCU2C full_cmp_7 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_3), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2199[11] 2201[68])
    defparam full_cmp_7.INIT0 = 16'b1001100110101010;
    defparam full_cmp_7.INIT1 = 16'b1001100110101010;
    defparam full_cmp_7.INJECT1_0 = "NO";
    defparam full_cmp_7.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2207[11] 2209[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2215[11] 2217[68])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_set_ctr_ci), .COUT(co0_4), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2223[11] 2226[22])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_4), .COUT(co1_4), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2232[11] 2235[22])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_4), .COUT(co2_4), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2241[11] 2244[22])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_4), .COUT(co3_4), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2250[11] 2253[22])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .COUT(co4_4), .S0(iae_setcount_8), 
          .S1(iae_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2259[11] 2262[22])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_5 (.A0(ae_setcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_4), .COUT(co5_4), .S0(iae_setcount_10), 
          .S1(iae_setcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2268[11] 2271[22])
    defparam ae_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INJECT1_0 = "NO";
    defparam ae_set_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_6 (.A0(ae_setcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_13), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_4), .COUT(co6_4), .S0(iae_setcount_12), 
          .S1(iae_setcount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2277[11] 2280[22])
    defparam ae_set_ctr_6.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_6.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_6.INJECT1_0 = "NO";
    defparam ae_set_ctr_6.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_7 (.A0(ae_setcount_14), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_4), .S0(iae_setcount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2286[11] 2288[80])
    defparam ae_set_ctr_7.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_7.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_7.INJECT1_0 = "NO";
    defparam ae_set_ctr_7.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2294[11] 2296[47])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2302[11] 2304[68])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2310[11] 2312[65])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2318[11] 2320[65])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2326[11] 2328[65])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_setcount_8), .B0(wcount_r8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_5), .COUT(co4_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2334[11] 2336[65])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_5 (.A0(ae_setcount_10), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_11), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co4_5), .COUT(co5_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2342[11] 2344[65])
    defparam ae_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INJECT1_0 = "NO";
    defparam ae_set_cmp_5.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_6 (.A0(ae_setcount_12), .B0(wcount_r12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_13), .B1(wcount_r13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_5), .COUT(co6_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2350[11] 2352[65])
    defparam ae_set_cmp_6.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_6.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_6.INJECT1_0 = "NO";
    defparam ae_set_cmp_6.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_7 (.A0(ae_set_cmp_set), .B0(ae_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_5), .COUT(ae_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2358[11] 2360[70])
    defparam ae_set_cmp_7.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_7.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_7.INJECT1_0 = "NO";
    defparam ae_set_cmp_7.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2366[11] 2368[57])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_clr_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2374[11] 2376[68])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_clr_ctr_ci), .COUT(co0_6), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2382[11] 2385[22])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2391[11] 2394[22])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2400[11] 2403[22])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2409[11] 2412[22])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(co4_6), .S0(iae_clrcount_8), 
          .S1(iae_clrcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2418[11] 2421[22])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_5 (.A0(ae_clrcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_6), .COUT(co5_6), .S0(iae_clrcount_10), 
          .S1(iae_clrcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2427[11] 2430[22])
    defparam ae_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INJECT1_0 = "NO";
    defparam ae_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_6 (.A0(ae_clrcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_13), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_6), .COUT(co6_6), .S0(iae_clrcount_12), 
          .S1(iae_clrcount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2436[11] 2439[22])
    defparam ae_clr_ctr_6.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_6.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_6.INJECT1_0 = "NO";
    defparam ae_clr_ctr_6.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_7 (.A0(ae_clrcount_14), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_6), .S0(iae_clrcount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2445[11] 2447[80])
    defparam ae_clr_ctr_7.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_7.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_7.INJECT1_0 = "NO";
    defparam ae_clr_ctr_7.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2453[11] 2455[47])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2461[11] 2463[68])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2469[11] 2471[65])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2477[11] 2479[65])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2485[11] 2487[65])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clrcount_8), .B0(wcount_r8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_9), .B1(wcount_r9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_7), .COUT(co4_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2493[11] 2495[65])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_5 (.A0(ae_clrcount_10), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_11), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co4_7), .COUT(co5_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2501[11] 2503[65])
    defparam ae_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INJECT1_0 = "NO";
    defparam ae_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_6 (.A0(ae_clrcount_12), .B0(wcount_r12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_13), .B1(wcount_r13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_7), .COUT(co6_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2509[11] 2511[65])
    defparam ae_clr_cmp_6.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_6.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_6.INJECT1_0 = "NO";
    defparam ae_clr_cmp_6.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_7 (.A0(ae_clr_cmp_set), .B0(ae_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_7), .COUT(ae_clr_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2517[11] 2519[70])
    defparam ae_clr_cmp_7.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_7.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_7.INJECT1_0 = "NO";
    defparam ae_clr_cmp_7.INJECT1_1 = "NO";
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_clr_d_c), .S0(ae_clr_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2525[11] 2527[57])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2533[11] 2535[68])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_set_ctr_ci), .COUT(co0_8), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2541[11] 2544[22])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_8), .COUT(co1_8), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2550[11] 2553[22])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_8), .COUT(co2_8), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2559[11] 2562[22])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_8), .COUT(co3_8), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2568[11] 2571[22])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_8), .COUT(co4_8), .S0(iaf_setcount_8), 
          .S1(iaf_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2577[11] 2580[22])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_ctr_5 (.A0(af_setcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_8), .COUT(co5_8), .S0(iaf_setcount_10), 
          .S1(iaf_setcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2586[11] 2589[22])
    defparam af_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_5.INJECT1_0 = "NO";
    defparam af_set_ctr_5.INJECT1_1 = "NO";
    CCU2C af_set_ctr_6 (.A0(af_setcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_13), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_8), .COUT(co6_8), .S0(iaf_setcount_12), 
          .S1(iaf_setcount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2595[11] 2598[22])
    defparam af_set_ctr_6.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_6.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_6.INJECT1_0 = "NO";
    defparam af_set_ctr_6.INJECT1_1 = "NO";
    CCU2C af_set_ctr_7 (.A0(af_setcount_14), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_8), .S0(iaf_setcount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2604[11] 2606[80])
    defparam af_set_ctr_7.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_7.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_7.INJECT1_0 = "NO";
    defparam af_set_ctr_7.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_4)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2612[11] 2614[47])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_4), .COUT(co0_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2620[11] 2622[68])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_9), .COUT(co1_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2628[11] 2630[65])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(rcount_w5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_9), .COUT(co2_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2636[11] 2638[65])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_9), .COUT(co3_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2644[11] 2646[65])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_setcount_8), .B0(rcount_w8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_9), .B1(rcount_w9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_9), .COUT(co4_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2652[11] 2654[65])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_5 (.A0(af_setcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_11), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co4_9), .COUT(co5_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2660[11] 2662[65])
    defparam af_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_5.INJECT1_0 = "NO";
    defparam af_set_cmp_5.INJECT1_1 = "NO";
    CCU2C af_set_cmp_6 (.A0(af_setcount_12), .B0(rcount_w12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_13), .B1(rcount_w13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_9), .COUT(co6_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2668[11] 2670[65])
    defparam af_set_cmp_6.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_6.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_6.INJECT1_0 = "NO";
    defparam af_set_cmp_6.INJECT1_1 = "NO";
    CCU2C af_set_cmp_7 (.A0(af_set_cmp_set), .B0(af_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_9), .COUT(af_set_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2676[11] 2678[68])
    defparam af_set_cmp_7.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_7.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_7.INJECT1_0 = "NO";
    defparam af_set_cmp_7.INJECT1_1 = "NO";
    CCU2C a4 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_set_c), .S0(af_set)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2684[11] 2686[53])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_clr_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2692[11] 2694[68])
    defparam af_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INJECT1_0 = "NO";
    defparam af_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_0 (.A0(af_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_clr_ctr_ci), .COUT(co0_10), .S0(iaf_clrcount_0), 
          .S1(iaf_clrcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2700[11] 2703[23])
    defparam af_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INJECT1_0 = "NO";
    defparam af_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_1 (.A0(af_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_10), .COUT(co1_10), .S0(iaf_clrcount_2), 
          .S1(iaf_clrcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2709[11] 2712[23])
    defparam af_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INJECT1_0 = "NO";
    defparam af_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_2 (.A0(af_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_10), .COUT(co2_10), .S0(iaf_clrcount_4), 
          .S1(iaf_clrcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2718[11] 2721[23])
    defparam af_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INJECT1_0 = "NO";
    defparam af_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_3 (.A0(af_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_10), .COUT(co3_10), .S0(iaf_clrcount_6), 
          .S1(iaf_clrcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2727[11] 2730[23])
    defparam af_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INJECT1_0 = "NO";
    defparam af_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_4 (.A0(af_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_10), .COUT(co4_10), .S0(iaf_clrcount_8), 
          .S1(iaf_clrcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2736[11] 2739[23])
    defparam af_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INJECT1_0 = "NO";
    defparam af_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_5 (.A0(af_clrcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_10), .COUT(co5_10), .S0(iaf_clrcount_10), 
          .S1(iaf_clrcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2745[11] 2748[23])
    defparam af_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INJECT1_0 = "NO";
    defparam af_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_6 (.A0(af_clrcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_13), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_10), .COUT(co6_10), .S0(iaf_clrcount_12), 
          .S1(iaf_clrcount_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2754[11] 2757[23])
    defparam af_clr_ctr_6.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_6.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_6.INJECT1_0 = "NO";
    defparam af_clr_ctr_6.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_7 (.A0(af_clrcount_14), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_10), .S0(iaf_clrcount_14)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2763[11] 2765[81])
    defparam af_clr_ctr_7.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_7.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_7.INJECT1_0 = "NO";
    defparam af_clr_ctr_7.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2771[11] 2773[47])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(af_clrcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_5), .COUT(co0_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2779[11] 2781[69])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(af_clrcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_11), .COUT(co1_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2787[11] 2789[67])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(af_clrcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(rcount_w5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_11), .COUT(co2_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2795[11] 2797[67])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(af_clrcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_11), .COUT(co3_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2803[11] 2805[67])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(af_clrcount_8), .B0(rcount_w8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_9), .B1(rcount_w9), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_11), .COUT(co4_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2811[11] 2813[67])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_5 (.A0(af_clrcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_11), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co4_11), .COUT(co5_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2819[11] 2821[67])
    defparam af_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INJECT1_0 = "NO";
    defparam af_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_6 (.A0(af_clrcount_12), .B0(rcount_w12), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_13), .B1(rcount_w13), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_11), .COUT(co6_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2827[11] 2829[67])
    defparam af_clr_cmp_6.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_6.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_6.INJECT1_0 = "NO";
    defparam af_clr_cmp_6.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_7 (.A0(af_clr_cmp_set), .B0(af_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co6_11), .COUT(af_clr_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2835[11] 2837[69])
    defparam af_clr_cmp_7.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_7.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_7.INJECT1_0 = "NO";
    defparam af_clr_cmp_7.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a5 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_clr_c), .S0(af_clr)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(2847[11] 2849[53])
    defparam a5.INIT0 = 16'b0110011010101010;
    defparam a5.INIT1 = 16'b0110011010101010;
    defparam a5.INJECT1_0 = "NO";
    defparam a5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t30 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(529[10:55])
    INV INV_1 (.A(Full), .Z(invout_1));
    AND2 AND2_t29 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(533[10:55])
    INV INV_0 (.A(Empty), .Z(invout_0));
    OR2 OR2_t28 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(537[9:51])
    XOR2 XOR2_t27 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(539[10:62])
    XOR2 XOR2_t26 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(541[10:62])
    XOR2 XOR2_t25 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(543[10:62])
    XOR2 XOR2_t24 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(545[10:62])
    XOR2 XOR2_t23 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(547[10:62])
    XOR2 XOR2_t22 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(549[10:62])
    XOR2 XOR2_t21 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(551[10:62])
    XOR2 XOR2_t20 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(553[10:62])
    XOR2 XOR2_t19 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(555[10:62])
    XOR2 XOR2_t18 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(557[10:63])
    XOR2 XOR2_t17 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(559[10:65])
    XOR2 XOR2_t16 (.A(wcount_11), .B(wcount_12), .Z(w_gdata_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(561[10:65])
    XOR2 XOR2_t15 (.A(wcount_12), .B(wcount_13), .Z(w_gdata_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(563[10:65])
    XOR2 XOR2_t14 (.A(wcount_13), .B(wcount_14), .Z(w_gdata_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(565[10:65])
    XOR2 XOR2_t13 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(567[10:62])
    XOR2 XOR2_t12 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(569[10:62])
    XOR2 XOR2_t11 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(571[10:62])
    XOR2 XOR2_t10 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(573[10:62])
    XOR2 XOR2_t9 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(575[10:61])
    XOR2 XOR2_t8 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(577[10:61])
    XOR2 XOR2_t7 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(579[10:61])
    XOR2 XOR2_t6 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(581[10:61])
    XOR2 XOR2_t5 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(583[10:61])
    XOR2 XOR2_t4 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(585[10:62])
    XOR2 XOR2_t3 (.A(rcount_10), .B(rcount_11), .Z(r_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(587[10:64])
    XOR2 XOR2_t2 (.A(rcount_11), .B(rcount_12), .Z(r_gdata_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(589[10:64])
    XOR2 XOR2_t1 (.A(rcount_12), .B(rcount_13), .Z(r_gdata_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(591[10:64])
    XOR2 XOR2_t0 (.A(rcount_13), .B(rcount_14), .Z(r_gdata_13)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(593[10:64])
    ROM16X1A LUT4_51 (.AD0(w_gcount_r214), .AD1(w_gcount_r213), .AD2(w_gcount_r212), 
            .AD3(w_gcount_r211), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_51.initval = 16'b0110100110010110;
    ROM16X1A LUT4_50 (.AD0(w_gcount_r210), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_50.initval = 16'b0110100110010110;
    ROM16X1A LUT4_49 (.AD0(w_gcount_r26), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(w_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_49.initval = 16'b0110100110010110;
    ROM16X1A LUT4_48 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r214), 
            .AD3(w_gcount_r213), .DO0(wcount_r13)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_48.initval = 16'b0110100110010110;
    ROM16X1A LUT4_47 (.AD0(scuba_vlo), .AD1(w_gcount_r214), .AD2(w_gcount_r213), 
            .AD3(w_gcount_r212), .DO0(wcount_r12)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_47.initval = 16'b0110100110010110;
    ROM16X1A LUT4_46 (.AD0(wcount_r13), .AD1(w_gcount_r212), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_46.initval = 16'b0110100110010110;
    ROM16X1A LUT4_45 (.AD0(wcount_r12), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(wcount_r9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_45.initval = 16'b0110100110010110;
    ROM16X1A LUT4_44 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(wcount_r8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_44.initval = 16'b0110100110010110;
    ROM16X1A LUT4_43 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_43.initval = 16'b0110100110010110;
    ROM16X1A LUT4_42 (.AD0(scuba_vlo), .AD1(w_gcount_r26), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_42.initval = 16'b0110100110010110;
    ROM16X1A LUT4_41 (.AD0(w_gcount_r26), .AD1(w_gcount_r25), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_41.initval = 16'b0110100110010110;
    ROM16X1A LUT4_40 (.AD0(scuba_vlo), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(w_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_40.initval = 16'b0110100110010110;
    ROM16X1A LUT4_39 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2_1), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_39.initval = 16'b0110100110010110;
    ROM16X1A LUT4_38 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_38.initval = 16'b0110100110010110;
    ROM16X1A LUT4_37 (.AD0(w_gcount_r22), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_37.initval = 16'b0110100110010110;
    ROM16X1A LUT4_36 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_36.initval = 16'b0110100110010110;
    ROM16X1A LUT4_35 (.AD0(w_g2b_xor_cluster_3), .AD1(w_g2b_xor_cluster_2), 
            .AD2(w_g2b_xor_cluster_1), .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_35.initval = 16'b0110100110010110;
    ROM16X1A LUT4_34 (.AD0(scuba_vlo), .AD1(w_gcount_r22), .AD2(w_gcount_r21), 
            .AD3(w_gcount_r20), .DO0(w_g2b_xor_cluster_3_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_34.initval = 16'b0110100110010110;
    ROM16X1A LUT4_33 (.AD0(w_g2b_xor_cluster_3_1), .AD1(w_g2b_xor_cluster_2), 
            .AD2(w_g2b_xor_cluster_1), .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_33.initval = 16'b0110100110010110;
    ROM16X1A LUT4_32 (.AD0(r_gcount_w214), .AD1(r_gcount_w213), .AD2(r_gcount_w212), 
            .AD3(r_gcount_w211), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(r_gcount_w210), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_30 (.AD0(r_gcount_w26), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(r_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w214), 
            .AD3(r_gcount_w213), .DO0(rcount_w13)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(scuba_vlo), .AD1(r_gcount_w214), .AD2(r_gcount_w213), 
            .AD3(r_gcount_w212), .DO0(rcount_w12)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(rcount_w13), .AD1(r_gcount_w212), .AD2(r_gcount_w211), 
            .AD3(r_gcount_w210), .DO0(rcount_w10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(rcount_w12), .AD1(r_gcount_w211), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(rcount_w9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(scuba_vlo), .AD1(r_gcount_w26), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w26), .AD1(r_gcount_w25), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(scuba_vlo), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(r_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2_1), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(r_gcount_w22), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_3), .AD1(r_g2b_xor_cluster_2), 
            .AD2(r_g2b_xor_cluster_1), .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(r_g2b_xor_cluster_3_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(r_g2b_xor_cluster_3_1), .AD1(r_g2b_xor_cluster_2), 
            .AD2(r_g2b_xor_cluster_1), .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(scuba_vlo), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(rptr_14), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0000010000010000;
    ROM16X1A LUT4_12 (.AD0(scuba_vlo), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(rptr_14), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0001000000000100;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(wptr_14), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0000000101000000;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(wptr_14), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0100000000000001;
    ROM16X1A LUT4_9 (.AD0(rptr_14), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(ae_setcount_14), .DO0(ae_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0001001111001000;
    ROM16X1A LUT4_8 (.AD0(rptr_14), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(ae_setcount_14), .DO0(ae_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0010000000000100;
    ROM16X1A LUT4_7 (.AD0(rptr_14), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(ae_clrcount_14), .DO0(ae_clr_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0001001111001000;
    ROM16X1A LUT4_6 (.AD0(rptr_14), .AD1(w_gcount_r214), .AD2(rcount_14), 
            .AD3(ae_clrcount_14), .DO0(ae_clr_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0010000000000100;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(ae_clr_d), .AD2(ae_set_d), 
            .AD3(AlmostEmpty), .DO0(ae_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0100010001010000;
    ROM16X1A LUT4_4 (.AD0(wptr_14), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(af_setcount_14), .DO0(af_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0100110000110010;
    ROM16X1A LUT4_3 (.AD0(wptr_14), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(af_setcount_14), .DO0(af_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b1000000000000001;
    ROM16X1A LUT4_2 (.AD0(wptr_14), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(af_clrcount_14), .DO0(af_clr_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0100110000110010;
    ROM16X1A LUT4_1 (.AD0(wptr_14), .AD1(r_gcount_w214), .AD2(wcount_14), 
            .AD3(af_clrcount_14), .DO0(af_clr_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b1000000000000001;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(af_clr), .AD2(af_set), .AD3(AlmostFull), 
            .DO0(af_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100010001010000;
    DP16KD pdp_ram_0_0_7 (.DIA0(Data[0]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_7.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_0_7.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_0_7.REGMODE_A = "NOREG";
    defparam pdp_ram_0_0_7.REGMODE_B = "NOREG";
    defparam pdp_ram_0_0_7.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_7.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_7.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_7.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_7.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_7.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_7.GSR = "ENABLED";
    defparam pdp_ram_0_0_7.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_6 (.DIA0(Data[1]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[1])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_6.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_1_6.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_1_6.REGMODE_A = "NOREG";
    defparam pdp_ram_0_1_6.REGMODE_B = "NOREG";
    defparam pdp_ram_0_1_6.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_6.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_6.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_6.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_6.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_6.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_6.GSR = "ENABLED";
    defparam pdp_ram_0_1_6.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_2_5 (.DIA0(Data[2]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[2])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_2_5.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_2_5.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_2_5.REGMODE_A = "NOREG";
    defparam pdp_ram_0_2_5.REGMODE_B = "NOREG";
    defparam pdp_ram_0_2_5.RESETMODE = "ASYNC";
    defparam pdp_ram_0_2_5.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_2_5.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_2_5.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_2_5.CSDECODE_A = "0b000";
    defparam pdp_ram_0_2_5.CSDECODE_B = "0b000";
    defparam pdp_ram_0_2_5.GSR = "ENABLED";
    defparam pdp_ram_0_2_5.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_3_4 (.DIA0(Data[3]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[3])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_3_4.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_3_4.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_3_4.REGMODE_A = "NOREG";
    defparam pdp_ram_0_3_4.REGMODE_B = "NOREG";
    defparam pdp_ram_0_3_4.RESETMODE = "ASYNC";
    defparam pdp_ram_0_3_4.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_3_4.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_3_4.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_3_4.CSDECODE_A = "0b000";
    defparam pdp_ram_0_3_4.CSDECODE_B = "0b000";
    defparam pdp_ram_0_3_4.GSR = "ENABLED";
    defparam pdp_ram_0_3_4.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_4_3 (.DIA0(Data[4]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[4])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_4_3.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_4_3.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_4_3.REGMODE_A = "NOREG";
    defparam pdp_ram_0_4_3.REGMODE_B = "NOREG";
    defparam pdp_ram_0_4_3.RESETMODE = "ASYNC";
    defparam pdp_ram_0_4_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_4_3.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_4_3.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_4_3.CSDECODE_A = "0b000";
    defparam pdp_ram_0_4_3.CSDECODE_B = "0b000";
    defparam pdp_ram_0_4_3.GSR = "ENABLED";
    defparam pdp_ram_0_4_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_5_2 (.DIA0(Data[5]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[5])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_5_2.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_5_2.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_5_2.REGMODE_A = "NOREG";
    defparam pdp_ram_0_5_2.REGMODE_B = "NOREG";
    defparam pdp_ram_0_5_2.RESETMODE = "ASYNC";
    defparam pdp_ram_0_5_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_5_2.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_5_2.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_5_2.CSDECODE_A = "0b000";
    defparam pdp_ram_0_5_2.CSDECODE_B = "0b000";
    defparam pdp_ram_0_5_2.GSR = "ENABLED";
    defparam pdp_ram_0_5_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_6_1 (.DIA0(Data[6]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[6])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_6_1.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_6_1.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_6_1.REGMODE_A = "NOREG";
    defparam pdp_ram_0_6_1.REGMODE_B = "NOREG";
    defparam pdp_ram_0_6_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_6_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_6_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_6_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_6_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_6_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_6_1.GSR = "ENABLED";
    defparam pdp_ram_0_6_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_7_0 (.DIA0(Data[7]), .DIA1(scuba_vlo), .DIA2(scuba_vlo), 
           .DIA3(scuba_vlo), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(wptr_0), 
           .ADA1(wptr_1), .ADA2(wptr_2), .ADA3(wptr_3), .ADA4(wptr_4), 
           .ADA5(wptr_5), .ADA6(wptr_6), .ADA7(wptr_7), .ADA8(wptr_8), 
           .ADA9(wptr_9), .ADA10(wptr_10), .ADA11(wptr_11), .ADA12(wptr_12), 
           .ADA13(wptr_13), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(rptr_0), 
           .ADB1(rptr_1), .ADB2(rptr_2), .ADB3(rptr_3), .ADB4(rptr_4), 
           .ADB5(rptr_5), .ADB6(rptr_6), .ADB7(rptr_7), .ADB8(rptr_8), 
           .ADB9(rptr_9), .ADB10(rptr_10), .ADB11(rptr_11), .ADB12(rptr_12), 
           .ADB13(rptr_13), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[7])) /* synthesis MEM_LPC_FILE="fifo_8bit_sl.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_7_0.DATA_WIDTH_A = 1;
    defparam pdp_ram_0_7_0.DATA_WIDTH_B = 1;
    defparam pdp_ram_0_7_0.REGMODE_A = "NOREG";
    defparam pdp_ram_0_7_0.REGMODE_B = "NOREG";
    defparam pdp_ram_0_7_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_7_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_7_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_7_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_7_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_7_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_7_0.GSR = "ENABLED";
    defparam pdp_ram_0_7_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INIT_DATA = "STATIC";
    FD1P3BX FF_213 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_sl/fifo_8bit_sl.v(1115[13] 1116[22])
    defparam FF_213.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

