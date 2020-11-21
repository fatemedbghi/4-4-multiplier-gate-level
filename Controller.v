`timescale 1ns/1ns
module controller(input start, clk, enable, output rst, ld, s0, s1, s2);

    wire A, B, C;
    wire _A, _B, _C;
    wire and_A_1, and_A_2, and_B_1, and_B_2, and_C_1, and_C_2, and_C_3;
    wire and_s0_1, and_s0_2, and_s1_1, and_s1_2, and_s2_1, and_s2_2;
    wire and_ld_1, and_ld_2, and_ld_3, or_ld;

    // _A to A 
    and GA1(and_A_1, A, ~B);
    and GA2(and_A_2, ~A, B, C);
    or GA3(_A, and_A_1, and_A_2);
    D_flip_flop D_A(_A, clk, enable, A);

    // _B to B
    and GB1(and_B_1, ~B, C);
    and GB2(and_B_2, ~A, B, ~C);
    or GB(_B, and_B_1, and_B_2);
    D_flip_flop D_B(_B, clk, enable, B);

    // _C to C
    and GC1(and_C_1, ~A, ~C, start);
    and GC2(and_C_2, ~A, B, ~C);
    and GC3(and_C_3, A, ~B, ~C);
    or GC4(_C, and_C_1, and_C_2, and_C_3);
    D_flip_flop D_C(_C, clk, enable, C);

    // ld
    and G_ld_1(and_ld_1, ~A, B);
    and G_ld_2(and_ld_2, B, ~C);
    and G_ld_3(and_ld_3, A, ~B);
    or G_ld_4(ld, and_ld_1, and_ld_2, and_ld_3);

    // rst
    and G_rst(rst, ~A, ~B, C);

    // s0
    and G_s0_1(and_s0_1, ~A, B, C);
    and G_s0_2(and_s0_2, A, ~B, C);
    or G_s0_3(s0, and_s0_1, and_s0_2);

    // s1
    and G_s1_1(and_s1_1, A, ~B, ~C);
    and G_s1_2(and_s1_2, ~A, B, C);
    or G_s1_3(s1, and_s1_1, and_s1_2);

    // s2
    and G_s2_1(and_s2_1, ~A, B, C);
    and G_s2_2(and_s2_2, A, ~B, C);
    or G_s2_3(s2, and_s2_1, and_s2_2);

endmodule 
