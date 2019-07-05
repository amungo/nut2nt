// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Thu Jul 04 19:19:44 2019
//
// Verilog Description of module fifo_8bit_buffer
//

module fifo_8bit_buffer (Data, WrClock, RdClock, WrEn, RdEn, Reset, 
            RPReset, Q, Empty, Full, AlmostFull) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(8[8:24])
    input [7:0]Data;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(10[22:26])
    input WrClock;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(11[16:23])
    input RdClock;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(12[16:23])
    input WrEn;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(13[16:20])
    input RdEn;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(14[16:20])
    input Reset;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(15[16:21])
    input RPReset;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(16[16:23])
    output [7:0]Q;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(17[23:24])
    output Empty;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(18[17:22])
    output Full;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(19[17:21])
    output AlmostFull;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(20[17:27])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_2_1, w_g2b_xor_cluster_2, 
        w_g2b_xor_cluster_1, r_g2b_xor_cluster_2_1, r_g2b_xor_cluster_2, 
        r_g2b_xor_cluster_1, w_gdata_0, w_gdata_1, w_gdata_2, w_gdata_3, 
        w_gdata_4, w_gdata_5, w_gdata_6, w_gdata_7, w_gdata_8, w_gdata_9, 
        w_gdata_10, w_gdata_11, wptr_0, wptr_1, wptr_2, wptr_3, 
        wptr_4, wptr_5, wptr_6, wptr_7, wptr_8, wptr_9, wptr_10, 
        wptr_11, wptr_12, r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, 
        r_gdata_4, r_gdata_5, r_gdata_6, r_gdata_7, r_gdata_8, r_gdata_9, 
        r_gdata_10, r_gdata_11, rptr_0, rptr_1, rptr_2, rptr_3, 
        rptr_4, rptr_5, rptr_6, rptr_7, rptr_8, rptr_9, rptr_10, 
        rptr_11, rptr_12, w_gcount_0, w_gcount_1, w_gcount_2, w_gcount_3, 
        w_gcount_4, w_gcount_5, w_gcount_6, w_gcount_7, w_gcount_8, 
        w_gcount_9, w_gcount_10, w_gcount_11, w_gcount_12, r_gcount_0, 
        r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, r_gcount_5, 
        r_gcount_6, r_gcount_7, r_gcount_8, r_gcount_9, r_gcount_10, 
        r_gcount_11, r_gcount_12, w_gcount_r20, w_gcount_r0, w_gcount_r21, 
        w_gcount_r1, w_gcount_r22, w_gcount_r2, w_gcount_r23, w_gcount_r3, 
        w_gcount_r24, w_gcount_r4, w_gcount_r25, w_gcount_r5, w_gcount_r26, 
        w_gcount_r6, w_gcount_r27, w_gcount_r7, w_gcount_r28, w_gcount_r8, 
        w_gcount_r29, w_gcount_r9, w_gcount_r210, w_gcount_r10, w_gcount_r211, 
        w_gcount_r11, w_gcount_r212, w_gcount_r12, r_gcount_w20, r_gcount_w0, 
        r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, r_gcount_w23, 
        r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, r_gcount_w5, 
        r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, r_gcount_w28, 
        r_gcount_w8, r_gcount_w29, r_gcount_w9, r_gcount_w210, r_gcount_w10, 
        r_gcount_w211, r_gcount_w11, r_gcount_w212, r_gcount_w12, rRst, 
        af_d, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, iwcount_3, 
        co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, co2, 
        iwcount_8, iwcount_9, co3, iwcount_10, iwcount_11, co4, 
        iwcount_12, co5, wcount_12, ircount_0, ircount_1, r_gctr_ci, 
        ircount_2, ircount_3, co0_1, ircount_4, ircount_5, co1_1, 
        ircount_6, ircount_7, co2_1, ircount_8, ircount_9, co3_1, 
        ircount_10, ircount_11, co4_1, ircount_12, co5_1, rcount_12, 
        rden_i, cmp_ci, wcount_r0, wcount_r1, rcount_0, rcount_1, 
        co0_2, wcount_r2, wcount_r3, rcount_2, rcount_3, co1_2, 
        wcount_r4, wcount_r5, rcount_4, rcount_5, co2_2, wcount_r6, 
        wcount_r7, rcount_6, rcount_7, co3_2, wcount_r8, w_g2b_xor_cluster_0, 
        rcount_8, rcount_9, co4_2, wcount_r10, wcount_r11, rcount_10, 
        rcount_11, co5_2, empty_cmp_clr, empty_cmp_set, empty_d, empty_d_c, 
        cmp_ci_1, wcount_0, wcount_1, co0_3, wcount_2, wcount_3, 
        co1_3, wcount_4, wcount_5, co2_3, wcount_6, wcount_7, co3_3, 
        wcount_8, wcount_9, co4_3, wcount_10, wcount_11, co5_3, 
        full_cmp_clr, full_cmp_set, full_d, full_d_c, iaf_setcount_0, 
        iaf_setcount_1, af_set_ctr_ci, iaf_setcount_2, iaf_setcount_3, 
        co0_4, iaf_setcount_4, iaf_setcount_5, co1_4, iaf_setcount_6, 
        iaf_setcount_7, co2_4, iaf_setcount_8, iaf_setcount_9, co3_4, 
        iaf_setcount_10, iaf_setcount_11, co4_4, iaf_setcount_12, co5_4, 
        af_setcount_12, cmp_ci_2, af_setcount_0, af_setcount_1, co0_5, 
        af_setcount_2, af_setcount_3, co1_5, af_setcount_4, af_setcount_5, 
        co2_5, af_setcount_6, af_setcount_7, co3_5, af_setcount_8, 
        af_setcount_9, co4_5, af_setcount_10, af_setcount_11, co5_5, 
        af_set_cmp_clr, af_set_cmp_set, af_set, af_set_c, iaf_clrcount_0, 
        iaf_clrcount_1, af_clr_ctr_ci, iaf_clrcount_2, iaf_clrcount_3, 
        co0_6, iaf_clrcount_4, iaf_clrcount_5, co1_6, iaf_clrcount_6, 
        iaf_clrcount_7, co2_6, iaf_clrcount_8, iaf_clrcount_9, co3_6, 
        iaf_clrcount_10, iaf_clrcount_11, co4_6, iaf_clrcount_12, co5_6, 
        af_clrcount_12, wren_i, cmp_ci_3, rcount_w0, rcount_w1, af_clrcount_0, 
        af_clrcount_1, co0_7, rcount_w2, rcount_w3, af_clrcount_2, 
        af_clrcount_3, co1_7, rcount_w4, rcount_w5, af_clrcount_4, 
        af_clrcount_5, co2_7, rcount_w6, rcount_w7, af_clrcount_6, 
        af_clrcount_7, co3_7, rcount_w8, r_g2b_xor_cluster_0, af_clrcount_8, 
        af_clrcount_9, co4_7, rcount_w10, rcount_w11, af_clrcount_10, 
        af_clrcount_11, co5_7, af_clr_cmp_clr, af_clr_cmp_set, af_clr, 
        scuba_vhi, scuba_vlo, af_clr_c;
    
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3DX FF_157 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(670[13] 671[22])
    defparam FF_157.GSR = "ENABLED";
    FD1P3DX FF_156 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(674[13] 675[22])
    defparam FF_156.GSR = "ENABLED";
    FD1P3DX FF_155 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(678[13] 679[22])
    defparam FF_155.GSR = "ENABLED";
    FD1P3DX FF_154 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(682[13] 683[22])
    defparam FF_154.GSR = "ENABLED";
    FD1P3DX FF_153 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(686[13] 687[22])
    defparam FF_153.GSR = "ENABLED";
    FD1P3DX FF_152 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(690[13] 691[22])
    defparam FF_152.GSR = "ENABLED";
    FD1P3DX FF_151 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(694[13] 695[22])
    defparam FF_151.GSR = "ENABLED";
    FD1P3DX FF_150 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(698[13] 699[22])
    defparam FF_150.GSR = "ENABLED";
    FD1P3DX FF_149 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(702[13] 703[22])
    defparam FF_149.GSR = "ENABLED";
    FD1P3DX FF_148 (.D(iwcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(706[13] 707[23])
    defparam FF_148.GSR = "ENABLED";
    FD1P3DX FF_147 (.D(iwcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(710[13] 711[23])
    defparam FF_147.GSR = "ENABLED";
    FD1P3DX FF_146 (.D(iwcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(714[13] 715[23])
    defparam FF_146.GSR = "ENABLED";
    FD1P3DX FF_145 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(718[13] 719[24])
    defparam FF_145.GSR = "ENABLED";
    FD1P3DX FF_144 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(722[13] 723[24])
    defparam FF_144.GSR = "ENABLED";
    FD1P3DX FF_143 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(726[13] 727[24])
    defparam FF_143.GSR = "ENABLED";
    FD1P3DX FF_142 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(730[13] 731[24])
    defparam FF_142.GSR = "ENABLED";
    FD1P3DX FF_141 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(734[13] 735[24])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(738[13] 739[24])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(742[13] 743[24])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_138 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(746[13] 747[24])
    defparam FF_138.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(750[13] 751[24])
    defparam FF_137.GSR = "ENABLED";
    FD1P3DX FF_136 (.D(w_gdata_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(754[13] 755[24])
    defparam FF_136.GSR = "ENABLED";
    FD1P3DX FF_135 (.D(w_gdata_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(758[13] 759[25])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(w_gdata_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(762[13] 763[25])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(wcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(766[13] 767[25])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(770[13] 771[20])
    defparam FF_132.GSR = "ENABLED";
    FD1P3DX FF_131 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(774[13] 775[20])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_130 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(778[13] 779[20])
    defparam FF_130.GSR = "ENABLED";
    FD1P3DX FF_129 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(782[13] 783[20])
    defparam FF_129.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(786[13] 787[20])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(790[13] 791[20])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(794[13] 795[20])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(798[13] 799[20])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(802[13] 803[20])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(806[13] 807[20])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(wcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(810[13] 811[21])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(814[13] 815[21])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(wcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(818[13] 819[21])
    defparam FF_120.GSR = "ENABLED";
    FD1P3BX FF_119 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(822[13] 823[22])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(826[13] 827[22])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(830[13] 831[22])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(834[13] 835[22])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(838[13] 839[22])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(842[13] 843[22])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(846[13] 847[22])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(850[13] 851[22])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(854[13] 855[22])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(858[13] 859[22])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(ircount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(862[13] 863[23])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(ircount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(866[13] 867[23])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(ircount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(870[13] 871[23])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(874[13] 875[24])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(878[13] 879[24])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(882[13] 883[24])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(886[13] 887[24])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(890[13] 891[24])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(894[13] 895[24])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(898[13] 899[24])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(902[13] 903[24])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(906[13] 907[24])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(r_gdata_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(910[13] 911[24])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(r_gdata_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(914[13] 915[25])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(r_gdata_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(918[13] 919[25])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(rcount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(922[13] 923[25])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(926[13:83])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(929[13:83])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(932[13:83])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(935[13:83])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(938[13:83])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(941[13:83])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(944[13:83])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(947[13:83])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(950[13:83])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(953[13:83])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(956[13] 957[21])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(rcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(960[13] 961[21])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(rcount_12), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(964[13] 965[21])
    defparam FF_81.GSR = "ENABLED";
    FD1S3DX FF_80 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(968[13:78])
    defparam FF_80.GSR = "ENABLED";
    FD1S3DX FF_79 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(971[13:78])
    defparam FF_79.GSR = "ENABLED";
    FD1S3DX FF_78 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(974[13:78])
    defparam FF_78.GSR = "ENABLED";
    FD1S3DX FF_77 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(977[13:78])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_76 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(980[13:78])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(983[13:78])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(986[13:78])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(989[13:78])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(992[13:78])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(995[13:78])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(998[13:80])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1001[13:80])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1004[13:80])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1007[13:77])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1010[13:77])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1013[13:77])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1016[13:77])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1019[13:77])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1022[13:77])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1025[13:77])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1028[13:77])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1031[13:77])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1034[13:77])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(r_gcount_10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1037[13:79])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(r_gcount_11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1040[13:79])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(r_gcount_12), .CK(WrClock), .CD(rRst), .Q(r_gcount_w12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1043[13:79])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1046[13:80])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1049[13:80])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1052[13:80])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_51 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1055[13:80])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1058[13:80])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1061[13:80])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1064[13:80])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1067[13:80])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1070[13:80])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1073[13:80])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(w_gcount_r10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1076[13:82])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(w_gcount_r11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1079[13:82])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(w_gcount_r12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r212)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1082[13:82])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1085[13:79])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1088[13:79])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1091[13:79])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1094[13:79])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1097[13:79])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1100[13:79])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1103[13:79])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1106[13:79])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1109[13:79])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1112[13:79])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(r_gcount_w10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1115[13:81])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(r_gcount_w11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1118[13:81])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(r_gcount_w12), .CK(WrClock), .CD(rRst), .Q(r_gcount_w212)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1121[13:81])
    defparam FF_29.GSR = "ENABLED";
    FD1S3BX FF_28 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1124[13:70])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1127[13:69])
    defparam FF_27.GSR = "ENABLED";
    FD1P3BX FF_26 (.D(iaf_setcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1130[13] 1131[27])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(iaf_setcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1134[13] 1135[27])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(iaf_setcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1138[13] 1139[27])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iaf_setcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1142[13] 1143[27])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(iaf_setcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1146[13] 1147[27])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iaf_setcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1150[13] 1151[27])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(iaf_setcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1154[13] 1155[27])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(iaf_setcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1158[13] 1159[27])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iaf_setcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1162[13] 1163[27])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iaf_setcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1166[13] 1167[27])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iaf_setcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1170[13] 1171[28])
    defparam FF_16.GSR = "ENABLED";
    FD1P3BX FF_15 (.D(iaf_setcount_11), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1174[13] 1175[28])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iaf_setcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1178[13] 1179[28])
    defparam FF_14.GSR = "ENABLED";
    FD1P3BX FF_13 (.D(iaf_clrcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1182[13] 1183[27])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(iaf_clrcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1186[13] 1187[27])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(iaf_clrcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1190[13] 1191[27])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(iaf_clrcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1194[13] 1195[27])
    defparam FF_10.GSR = "ENABLED";
    FD1P3BX FF_9 (.D(iaf_clrcount_4), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1198[13] 1199[27])
    defparam FF_9.GSR = "ENABLED";
    FD1P3BX FF_8 (.D(iaf_clrcount_5), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1202[13] 1203[27])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(iaf_clrcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1206[13] 1207[27])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(iaf_clrcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1210[13] 1211[27])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(iaf_clrcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1214[13] 1215[27])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iaf_clrcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1218[13] 1219[27])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(iaf_clrcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1222[13] 1223[28])
    defparam FF_3.GSR = "ENABLED";
    FD1P3BX FF_2 (.D(iaf_clrcount_11), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1226[13] 1227[28])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_clrcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1230[13] 1231[28])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(WrClock), .CD(Reset), .Q(AlmostFull)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1234[13:62])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1241[11] 1243[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1249[11] 1251[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1257[11] 1259[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1265[11] 1267[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1273[11] 1275[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1281[11] 1283[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .COUT(co5), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1289[11] 1291[65])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C w_gctr_6 (.A0(wcount_12), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5), .S0(iwcount_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1297[11] 1299[55])
    defparam w_gctr_6.INIT0 = 16'b0110011010101010;
    defparam w_gctr_6.INIT1 = 16'b0110011010101010;
    defparam w_gctr_6.INJECT1_0 = "NO";
    defparam w_gctr_6.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1305[11] 1307[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1313[11] 1315[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1321[11] 1323[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1329[11] 1331[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1337[11] 1339[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1345[11] 1347[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .COUT(co5_1), .S0(ircount_10), .S1(ircount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1353[11] 1355[69])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C r_gctr_6 (.A0(rcount_12), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5_1), .S0(ircount_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1361[11] 1363[59])
    defparam r_gctr_6.INIT0 = 16'b0110011010101010;
    defparam r_gctr_6.INIT1 = 16'b0110011010101010;
    defparam r_gctr_6.INJECT1_0 = "NO";
    defparam r_gctr_6.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1369[11] 1371[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1377[11] 1379[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1385[11] 1387[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1393[11] 1395[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1401[11] 1403[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(wcount_r8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_9), .B1(w_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .COUT(co4_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1409[11] 1411[49])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(rcount_10), .B0(wcount_r10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_11), .B1(wcount_r11), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_2), .COUT(co5_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1417[11] 1419[65])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_6 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_2), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1425[11] 1427[69])
    defparam empty_cmp_6.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_6.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_6.INJECT1_0 = "NO";
    defparam empty_cmp_6.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1433[11] 1435[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1441[11] 1443[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1449[11] 1451[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1457[11] 1459[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1465[11] 1467[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1473[11] 1475[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(rcount_w8), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_3), .COUT(co4_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1481[11] 1483[49])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_11), .B1(rcount_w11), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_3), .COUT(co5_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1489[11] 1491[49])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    CCU2C full_cmp_6 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_3), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1497[11] 1499[68])
    defparam full_cmp_6.INIT0 = 16'b1001100110101010;
    defparam full_cmp_6.INIT1 = 16'b1001100110101010;
    defparam full_cmp_6.INJECT1_0 = "NO";
    defparam full_cmp_6.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1505[11] 1507[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1513[11] 1515[68])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_set_ctr_ci), .COUT(co0_4), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1521[11] 1524[22])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_4), .COUT(co1_4), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1530[11] 1533[22])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_4), .COUT(co2_4), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1539[11] 1542[22])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_4), .COUT(co3_4), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1548[11] 1551[22])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .COUT(co4_4), .S0(iaf_setcount_8), 
          .S1(iaf_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1557[11] 1560[22])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_ctr_5 (.A0(af_setcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_4), .COUT(co5_4), .S0(iaf_setcount_10), 
          .S1(iaf_setcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1566[11] 1569[22])
    defparam af_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_5.INJECT1_0 = "NO";
    defparam af_set_ctr_5.INJECT1_1 = "NO";
    CCU2C af_set_ctr_6 (.A0(af_setcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_4), .S0(iaf_setcount_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1575[11] 1577[80])
    defparam af_set_ctr_6.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_6.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_6.INJECT1_0 = "NO";
    defparam af_set_ctr_6.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1583[11] 1585[47])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1591[11] 1593[68])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1599[11] 1601[65])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(rcount_w5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1607[11] 1609[65])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1615[11] 1617[65])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_setcount_8), .B0(rcount_w8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_9), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co3_5), .COUT(co4_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1623[11] 1625[65])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_5 (.A0(af_setcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_11), .B1(rcount_w11), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_5), .COUT(co5_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1631[11] 1633[65])
    defparam af_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_5.INJECT1_0 = "NO";
    defparam af_set_cmp_5.INJECT1_1 = "NO";
    CCU2C af_set_cmp_6 (.A0(af_set_cmp_set), .B0(af_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_5), .COUT(af_set_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1639[11] 1641[68])
    defparam af_set_cmp_6.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_6.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_6.INJECT1_0 = "NO";
    defparam af_set_cmp_6.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_set_c), .S0(af_set)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1647[11] 1649[53])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_clr_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1655[11] 1657[68])
    defparam af_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INJECT1_0 = "NO";
    defparam af_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_0 (.A0(af_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_clr_ctr_ci), .COUT(co0_6), .S0(iaf_clrcount_0), 
          .S1(iaf_clrcount_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1663[11] 1666[22])
    defparam af_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INJECT1_0 = "NO";
    defparam af_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_1 (.A0(af_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6), .S0(iaf_clrcount_2), 
          .S1(iaf_clrcount_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1672[11] 1675[22])
    defparam af_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INJECT1_0 = "NO";
    defparam af_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_2 (.A0(af_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6), .S0(iaf_clrcount_4), 
          .S1(iaf_clrcount_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1681[11] 1684[22])
    defparam af_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INJECT1_0 = "NO";
    defparam af_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_3 (.A0(af_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6), .S0(iaf_clrcount_6), 
          .S1(iaf_clrcount_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1690[11] 1693[22])
    defparam af_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INJECT1_0 = "NO";
    defparam af_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_4 (.A0(af_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(co4_6), .S0(iaf_clrcount_8), 
          .S1(iaf_clrcount_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1699[11] 1702[22])
    defparam af_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INJECT1_0 = "NO";
    defparam af_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_5 (.A0(af_clrcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_6), .COUT(co5_6), .S0(iaf_clrcount_10), 
          .S1(iaf_clrcount_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1708[11] 1711[22])
    defparam af_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INJECT1_0 = "NO";
    defparam af_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_6 (.A0(af_clrcount_12), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_6), .S0(iaf_clrcount_12)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1717[11] 1719[80])
    defparam af_clr_ctr_6.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_6.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_6.INJECT1_0 = "NO";
    defparam af_clr_ctr_6.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1725[11] 1727[47])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(af_clrcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1733[11] 1735[68])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(af_clrcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1741[11] 1743[65])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(af_clrcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(rcount_w5), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1749[11] 1751[65])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(af_clrcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1757[11] 1759[65])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(af_clrcount_8), .B0(rcount_w8), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_9), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co3_7), .COUT(co4_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1765[11] 1767[65])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_5 (.A0(af_clrcount_10), .B0(rcount_w10), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_11), .B1(rcount_w11), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_7), .COUT(co5_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1773[11] 1775[65])
    defparam af_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INJECT1_0 = "NO";
    defparam af_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_6 (.A0(af_clr_cmp_set), .B0(af_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_7), .COUT(af_clr_c)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1781[11] 1783[68])
    defparam af_clr_cmp_6.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_6.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_6.INJECT1_0 = "NO";
    defparam af_clr_cmp_6.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_clr_c), .S0(af_clr)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(1793[11] 1795[53])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t26 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(372[10:55])
    INV INV_1 (.A(Full), .Z(invout_1));
    AND2 AND2_t25 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(376[10:55])
    INV INV_0 (.A(Empty), .Z(invout_0));
    OR2 OR2_t24 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(380[9:51])
    XOR2 XOR2_t23 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(382[10:62])
    XOR2 XOR2_t22 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(384[10:62])
    XOR2 XOR2_t21 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(386[10:62])
    XOR2 XOR2_t20 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(388[10:62])
    XOR2 XOR2_t19 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(390[10:62])
    XOR2 XOR2_t18 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(392[10:62])
    XOR2 XOR2_t17 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(394[10:62])
    XOR2 XOR2_t16 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(396[10:62])
    XOR2 XOR2_t15 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(398[10:62])
    XOR2 XOR2_t14 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(400[10:63])
    XOR2 XOR2_t13 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(402[10:65])
    XOR2 XOR2_t12 (.A(wcount_11), .B(wcount_12), .Z(w_gdata_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(404[10:65])
    XOR2 XOR2_t11 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(406[10:62])
    XOR2 XOR2_t10 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(408[10:62])
    XOR2 XOR2_t9 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(410[10:61])
    XOR2 XOR2_t8 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(412[10:61])
    XOR2 XOR2_t7 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(414[10:61])
    XOR2 XOR2_t6 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(416[10:61])
    XOR2 XOR2_t5 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(418[10:61])
    XOR2 XOR2_t4 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(420[10:61])
    XOR2 XOR2_t3 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(422[10:61])
    XOR2 XOR2_t2 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(424[10:62])
    XOR2 XOR2_t1 (.A(rcount_10), .B(rcount_11), .Z(r_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(426[10:64])
    XOR2 XOR2_t0 (.A(rcount_11), .B(rcount_12), .Z(r_gdata_11)) /* synthesis syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(428[10:64])
    ROM16X1A LUT4_38 (.AD0(w_gcount_r212), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_38.initval = 16'b0110100110010110;
    ROM16X1A LUT4_37 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_37.initval = 16'b0110100110010110;
    ROM16X1A LUT4_36 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_36.initval = 16'b0110100110010110;
    ROM16X1A LUT4_35 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r212), 
            .AD3(w_gcount_r211), .DO0(wcount_r11)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_35.initval = 16'b0110100110010110;
    ROM16X1A LUT4_34 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_34.initval = 16'b0110100110010110;
    ROM16X1A LUT4_33 (.AD0(wcount_r11), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(wcount_r8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_33.initval = 16'b0110100110010110;
    ROM16X1A LUT4_32 (.AD0(wcount_r10), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_30 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(scuba_vlo), .AD1(w_gcount_r24), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(scuba_vlo), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2_1), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(w_gcount_r20), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(r_gcount_w212), .AD1(r_gcount_w211), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w28), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w212), 
            .AD3(r_gcount_w211), .DO0(rcount_w11)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(scuba_vlo), .AD1(r_gcount_w212), .AD2(r_gcount_w211), 
            .AD3(r_gcount_w210), .DO0(rcount_w10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(rcount_w11), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(rcount_w10), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(scuba_vlo), .AD1(r_gcount_w24), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(scuba_vlo), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(r_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2_1), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(r_gcount_w20), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(rcount_12), 
            .AD3(rptr_12), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0000010000010000;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(rcount_12), 
            .AD3(rptr_12), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0001000000000100;
    ROM16X1A LUT4_6 (.AD0(scuba_vlo), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(wptr_12), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0000000101000000;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(wptr_12), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0100000000000001;
    ROM16X1A LUT4_4 (.AD0(wptr_12), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(af_setcount_12), .DO0(af_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0100110000110010;
    ROM16X1A LUT4_3 (.AD0(wptr_12), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(af_setcount_12), .DO0(af_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b1000000000000001;
    ROM16X1A LUT4_2 (.AD0(wptr_12), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(af_clrcount_12), .DO0(af_clr_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0100110000110010;
    ROM16X1A LUT4_1 (.AD0(wptr_12), .AD1(r_gcount_w212), .AD2(wcount_12), 
            .AD3(af_clrcount_12), .DO0(af_clr_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b1000000000000001;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(af_clr), .AD2(af_set), .AD3(AlmostFull), 
            .DO0(af_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100010001010000;
    DP16KD pdp_ram_0_0_1 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
           .DIA3(Data[3]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rptr_0), .ADB3(rptr_1), .ADB4(rptr_2), 
           .ADB5(rptr_3), .ADB6(rptr_4), .ADB7(rptr_5), .ADB8(rptr_6), 
           .ADB9(rptr_7), .ADB10(rptr_8), .ADB11(rptr_9), .ADB12(rptr_10), 
           .ADB13(rptr_11), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0]), .DOB1(Q[1]), .DOB2(Q[2]), .DOB3(Q[3])) /* synthesis MEM_LPC_FILE="fifo_8bit_buffer.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_1.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_0_1.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_0_1.REGMODE_A = "NOREG";
    defparam pdp_ram_0_0_1.REGMODE_B = "NOREG";
    defparam pdp_ram_0_0_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_1.GSR = "ENABLED";
    defparam pdp_ram_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_0 (.DIA0(Data[4]), .DIA1(Data[5]), .DIA2(Data[6]), 
           .DIA3(Data[7]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rptr_0), .ADB3(rptr_1), .ADB4(rptr_2), 
           .ADB5(rptr_3), .ADB6(rptr_4), .ADB7(rptr_5), .ADB8(rptr_6), 
           .ADB9(rptr_7), .ADB10(rptr_8), .ADB11(rptr_9), .ADB12(rptr_10), 
           .ADB13(rptr_11), .CEB(rden_i), .OCEB(rden_i), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[4]), .DOB1(Q[5]), .DOB2(Q[6]), .DOB3(Q[7])) /* synthesis MEM_LPC_FILE="fifo_8bit_buffer.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_0.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_1_0.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_1_0.REGMODE_A = "NOREG";
    defparam pdp_ram_0_1_0.REGMODE_B = "NOREG";
    defparam pdp_ram_0_1_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_0.GSR = "ENABLED";
    defparam pdp_ram_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INIT_DATA = "STATIC";
    FD1P3BX FF_158 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // d:/work/nut2nt-lattice/nuts2_framer/fifo_buffer/fifo_8bit_buffer/fifo_8bit_buffer.v(666[13] 667[22])
    defparam FF_158.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

