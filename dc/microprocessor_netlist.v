/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP4
// Date      : Fri Mar 13 18:08:28 2026
/////////////////////////////////////////////////////////////


module memory_INIT_MEM1 ( clk, we_re, request, address, data_in, mask, 
        data_out );
  input [7:0] address;
  input [31:0] data_in;
  input [3:0] mask;
  output [31:0] data_out;
  input clk, we_re, request;
  wire   \*Logic0* , _0_net_, n3;

  SRAM1RW256x32 mem ( .A(address), .I(data_in), .O(data_out), .OEB(\*Logic0* ), 
        .CE(clk), .CSB(n3), .WEB(_0_net_) );
  SAEDRVT14_TIE0_V1_2 U2 ( .X(\*Logic0* ) );
  SAEDRVT14_TIE1_4 U3 ( .X(_0_net_) );
  SAEDRVT14_INV_0P5 U4 ( .A(request), .X(n3) );
endmodule


module instruc_mem_top_INIT_MEM1 ( clk, rst, we_re, request, mask, address, 
        data_in, valid, data_out );
  input [3:0] mask;
  input [7:0] address;
  input [31:0] data_in;
  output [31:0] data_out;
  input clk, rst, we_re, request;
  output valid;
  wire   net25135, net25136, net25137, net25138, net25139;

  memory_INIT_MEM1 u_memory ( .clk(clk), .we_re(net25135), .request(request), 
        .address(address), .data_in(data_in), .mask({net25136, net25137, 
        net25138, net25139}), .data_out(data_out) );
endmodule


module pc ( clk, rst, load, jalr, next_sel, dmem_valid, branch_reselt, 
        next_address, address_in, address_out, pre_address_pc );
  input [31:0] next_address;
  input [31:0] address_in;
  output [31:0] address_out;
  output [31:0] pre_address_pc;
  input clk, rst, load, jalr, next_sel, dmem_valid, branch_reselt;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, N8, N9, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265;

  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[30]  ( .D(n87), .CK(clk), .RD(n91), 
        .Q(n2) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[29]  ( .D(n86), .CK(clk), .RD(n91), 
        .Q(n3) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[28]  ( .D(n85), .CK(clk), .RD(n91), 
        .Q(n4) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[27]  ( .D(n84), .CK(clk), .RD(n91), 
        .Q(n5) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[26]  ( .D(n83), .CK(clk), .RD(n91), 
        .Q(n6) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[25]  ( .D(n82), .CK(clk), .RD(n91), 
        .Q(n7) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[24]  ( .D(n81), .CK(clk), .RD(n91), 
        .Q(n8) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[22]  ( .D(n79), .CK(clk), .RD(n264), 
        .Q(n10) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[21]  ( .D(n78), .CK(clk), .RD(n90), 
        .Q(n11) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[20]  ( .D(n77), .CK(clk), .RD(n264), 
        .Q(n12) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[19]  ( .D(n76), .CK(clk), .RD(n90), 
        .Q(n13) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[18]  ( .D(n75), .CK(clk), .RD(n264), 
        .Q(n14) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[17]  ( .D(n74), .CK(clk), .RD(n90), 
        .Q(n15) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[16]  ( .D(n73), .CK(clk), .RD(rst), 
        .Q(n16) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[15]  ( .D(n72), .CK(clk), .RD(n91), 
        .Q(n17) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[14]  ( .D(n71), .CK(clk), .RD(n91), 
        .Q(n18) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[13]  ( .D(n70), .CK(clk), .RD(n91), 
        .Q(n19) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[12]  ( .D(n69), .CK(clk), .RD(n91), 
        .Q(n20) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[11]  ( .D(n68), .CK(clk), .RD(n91), 
        .Q(n21) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[10]  ( .D(n67), .CK(clk), .RD(n91), 
        .Q(n22) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[8]  ( .D(n65), .CK(clk), .RD(n91), 
        .Q(address_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[6]  ( .D(n63), .CK(clk), .RD(n265), 
        .Q(address_out[6]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[4]  ( .D(n61), .CK(clk), .RD(n265), 
        .Q(address_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[1]  ( .D(n58), .CK(clk), .RD(n265), 
        .Q(N9) );
  SAEDRVT14_FDPRBQ_V2_0P5 \address_out_reg[0]  ( .D(n57), .CK(clk), .RD(n265), 
        .Q(N8) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[31]  ( .D(n56), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[31]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[30]  ( .D(n55), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[29]  ( .D(n54), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[29]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[28]  ( .D(n53), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[27]  ( .D(n52), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[26]  ( .D(n51), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[25]  ( .D(n50), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[24]  ( .D(n49), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[23]  ( .D(n48), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[23]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[22]  ( .D(n47), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[20]  ( .D(n45), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[20]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[19]  ( .D(n44), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[18]  ( .D(n43), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[17]  ( .D(n42), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[16]  ( .D(n41), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[16]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[15]  ( .D(n40), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[14]  ( .D(n39), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[13]  ( .D(n38), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[12]  ( .D(n37), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[11]  ( .D(n36), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[10]  ( .D(n35), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[9]  ( .D(n34), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[8]  ( .D(n33), .CK(clk), .RD(n90), 
        .Q(pre_address_pc[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[7]  ( .D(n32), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[5]  ( .D(n30), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[4]  ( .D(n29), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[3]  ( .D(n28), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[2]  ( .D(n27), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[1]  ( .D(n26), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[0]  ( .D(n25), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[0]) );
  SAEDRVT14_FDPRBQ_V2LP_1 \address_out_reg[31]  ( .D(n88), .CK(clk), .RD(n91), 
        .Q(n1) );
  SAEDRVT14_FDPRBQ_V2_1 \address_out_reg[2]  ( .D(n59), .CK(clk), .RD(n265), 
        .Q(address_out[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \address_out_reg[5]  ( .D(n62), .CK(clk), .RD(n265), 
        .Q(address_out[5]) );
  SAEDRVT14_FDPRBQ_V2_1 \address_out_reg[3]  ( .D(n60), .CK(clk), .RD(n265), 
        .Q(address_out[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \address_out_reg[23]  ( .D(n80), .CK(clk), .RD(
        n264), .Q(n9) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \address_out_reg[7]  ( .D(n64), .CK(clk), .RD(n265), .Q(address_out[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \pre_address_reg[21]  ( .D(n46), .CK(clk), .RD(n90), .Q(pre_address_pc[21]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \pre_address_reg[6]  ( .D(n31), .CK(clk), .RD(n89), 
        .Q(pre_address_pc[6]) );
  SAEDRVT14_FDPRBQ_V2LP_1 \address_out_reg[9]  ( .D(n66), .CK(clk), .RD(n91), 
        .Q(address_out[9]) );
  SAEDRVT14_BUF_1 U3 ( .A(n114), .X(n134) );
  SAEDRVT14_BUF_1P5 U4 ( .A(n90), .X(n89) );
  SAEDRVT14_OAI22_0P5 U5 ( .A1(n2), .A2(n261), .B1(n260), .B2(n259), .X(n262)
         );
  SAEDRVT14_INV_0P5 U6 ( .A(n258), .X(n259) );
  SAEDRVT14_OAI22_0P5 U7 ( .A1(n5), .A2(n256), .B1(n255), .B2(n254), .X(n257)
         );
  SAEDRVT14_ND2_CDC_1 U8 ( .A1(n93), .A2(n92), .X(n190) );
  SAEDRVT14_BUF_3 U9 ( .A(n264), .X(n90) );
  SAEDRVT14_OAI21_0P5 U10 ( .A1(n3), .A2(n190), .B(n189), .X(n86) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(n2), .A2(n154), .A3(n261), .B1(n1), .B2(n94), 
        .X(n95) );
  SAEDRVT14_NR2_MM_1 U12 ( .A1(n152), .A2(n190), .X(n261) );
  SAEDRVT14_AO32_U_0P5 U13 ( .A1(n5), .A2(n145), .A3(n256), .B1(n4), .B2(n135), 
        .X(n136) );
  SAEDRVT14_AN2_MM_6 U14 ( .A1(n134), .A2(n187), .X(n157) );
  SAEDRVT14_BUF_1P5 U15 ( .A(n90), .X(n91) );
  SAEDRVT14_INV_0P75 U16 ( .A(n2), .X(n260) );
  SAEDRVT14_OAI22_0P5 U17 ( .A1(n157), .A2(n140), .B1(n156), .B2(n139), .X(n47) );
  SAEDRVT14_OAI22_0P5 U18 ( .A1(n157), .A2(n142), .B1(n156), .B2(n141), .X(n49) );
  SAEDRVT14_OAI22_0P5 U19 ( .A1(n157), .A2(n250), .B1(n156), .B2(n143), .X(n50) );
  SAEDRVT14_INV_S_1P5 U20 ( .A(n157), .X(n156) );
  SAEDRVT14_INV_S_5 U21 ( .A(n93), .X(n194) );
  SAEDRVT14_INV_S_2 U22 ( .A(n187), .X(n263) );
  SAEDRVT14_OAI22_0P5 U23 ( .A1(address_out[2]), .A2(n194), .B1(n138), .B2(
        n185), .X(n96) );
  SAEDRVT14_OAI22_0P5 U24 ( .A1(n157), .A2(n159), .B1(n185), .B2(n158), .X(n39) );
  SAEDRVT14_OAI22_0P5 U25 ( .A1(n157), .A2(n219), .B1(n185), .B2(n160), .X(n38) );
  SAEDRVT14_OAI22_0P5 U26 ( .A1(n157), .A2(n199), .B1(n185), .B2(n161), .X(n30) );
  SAEDRVT14_OAI22_0P5 U27 ( .A1(n157), .A2(n214), .B1(n185), .B2(n162), .X(n36) );
  SAEDRVT14_OAI22_0P5 U28 ( .A1(n157), .A2(n164), .B1(n185), .B2(n163), .X(n33) );
  SAEDRVT14_INV_S_2 U29 ( .A(n157), .X(n185) );
  SAEDRVT14_OR3_0P5 U30 ( .A1(n110), .A2(n159), .A3(n219), .X(n113) );
  SAEDRVT14_OAI21_0P5 U31 ( .A1(n2), .A2(n194), .B(n258), .X(n94) );
  SAEDRVT14_ND2_CDC_1 U32 ( .A1(address_out[3]), .A2(address_out[2]), .X(n195)
         );
  SAEDRVT14_NR2_1 U33 ( .A1(n194), .A2(n110), .X(n220) );
  SAEDRVT14_NR2_1 U34 ( .A1(n194), .A2(n126), .X(n246) );
  SAEDRVT14_NR2_1 U35 ( .A1(address_out[3]), .A2(n194), .X(n192) );
  SAEDRVT14_AO32_U_0P5 U36 ( .A1(n21), .A2(n170), .A3(n215), .B1(n20), .B2(
        n108), .X(n109) );
  SAEDRVT14_AO32_U_0P5 U37 ( .A1(n11), .A2(n140), .A3(n241), .B1(n10), .B2(
        n124), .X(n125) );
  SAEDRVT14_AO21_1 U38 ( .A1(next_address[31]), .A2(n232), .B(n95), .X(n88) );
  SAEDRVT14_AO21_1 U39 ( .A1(next_address[6]), .A2(n263), .B(n106), .X(n63) );
  SAEDRVT14_AO21_1 U40 ( .A1(next_address[18]), .A2(n263), .B(n119), .X(n75)
         );
  SAEDRVT14_OR3_0P5 U41 ( .A1(next_sel), .A2(branch_reselt), .A3(jalr), .X(n97) );
  SAEDRVT14_INV_S_1 U42 ( .A(n97), .X(n187) );
  SAEDRVT14_INV_S_1 U43 ( .A(n187), .X(n232) );
  SAEDRVT14_INV_0P5 U44 ( .A(n1), .X(n154) );
  SAEDRVT14_INV_0P75 U45 ( .A(n3), .X(n152) );
  SAEDRVT14_AN2B_MM_1 U46 ( .B(load), .A(dmem_valid), .X(n114) );
  SAEDRVT14_NR2_MM_1 U47 ( .A1(n134), .A2(n97), .X(n93) );
  SAEDRVT14_INV_0P5 U48 ( .A(address_out[3]), .X(n166) );
  SAEDRVT14_INV_0P5 U49 ( .A(address_out[2]), .X(n138) );
  SAEDRVT14_INV_0P5 U50 ( .A(address_out[4]), .X(n172) );
  SAEDRVT14_OR3_0P5 U51 ( .A1(n166), .A2(n138), .A3(n172), .X(n104) );
  SAEDRVT14_INV_0P5 U52 ( .A(address_out[6]), .X(n168) );
  SAEDRVT14_INV_0P5 U53 ( .A(address_out[5]), .X(n199) );
  SAEDRVT14_OR3_0P5 U54 ( .A1(n104), .A2(n168), .A3(n199), .X(n98) );
  SAEDRVT14_INV_0P5 U55 ( .A(address_out[8]), .X(n164) );
  SAEDRVT14_INV_0P5 U56 ( .A(address_out[7]), .X(n204) );
  SAEDRVT14_OR3_0P5 U57 ( .A1(n98), .A2(n164), .A3(n204), .X(n101) );
  SAEDRVT14_INV_0P5 U58 ( .A(n22), .X(n186) );
  SAEDRVT14_INV_0P5 U59 ( .A(address_out[9]), .X(n209) );
  SAEDRVT14_OR3_0P5 U60 ( .A1(n101), .A2(n186), .A3(n209), .X(n107) );
  SAEDRVT14_INV_0P5 U61 ( .A(n20), .X(n170) );
  SAEDRVT14_INV_0P5 U62 ( .A(n21), .X(n214) );
  SAEDRVT14_OR3_0P5 U63 ( .A1(n107), .A2(n170), .A3(n214), .X(n110) );
  SAEDRVT14_INV_0P5 U64 ( .A(n18), .X(n159) );
  SAEDRVT14_INV_0P5 U65 ( .A(n19), .X(n219) );
  SAEDRVT14_INV_0P5 U66 ( .A(n16), .X(n179) );
  SAEDRVT14_INV_0P5 U67 ( .A(n17), .X(n224) );
  SAEDRVT14_OR3_0P5 U68 ( .A1(n113), .A2(n179), .A3(n224), .X(n117) );
  SAEDRVT14_INV_0P5 U69 ( .A(n14), .X(n175) );
  SAEDRVT14_INV_0P5 U70 ( .A(n15), .X(n229) );
  SAEDRVT14_OR3_0P5 U71 ( .A1(n117), .A2(n175), .A3(n229), .X(n120) );
  SAEDRVT14_INV_0P5 U72 ( .A(n12), .X(n147) );
  SAEDRVT14_INV_0P5 U73 ( .A(n13), .X(n235) );
  SAEDRVT14_OR3_0P5 U74 ( .A1(n120), .A2(n147), .A3(n235), .X(n123) );
  SAEDRVT14_INV_0P5 U75 ( .A(n10), .X(n140) );
  SAEDRVT14_INV_0P5 U76 ( .A(n11), .X(n240) );
  SAEDRVT14_OR3_0P5 U77 ( .A1(n123), .A2(n140), .A3(n240), .X(n126) );
  SAEDRVT14_INV_0P5 U78 ( .A(n8), .X(n142) );
  SAEDRVT14_INV_0P5 U79 ( .A(n9), .X(n245) );
  SAEDRVT14_OR3_0P5 U80 ( .A1(n126), .A2(n142), .A3(n245), .X(n129) );
  SAEDRVT14_INV_0P5 U81 ( .A(n6), .X(n183) );
  SAEDRVT14_INV_0P5 U82 ( .A(n7), .X(n250) );
  SAEDRVT14_OR3_0P5 U83 ( .A1(n129), .A2(n183), .A3(n250), .X(n133) );
  SAEDRVT14_INV_0P5 U84 ( .A(n4), .X(n145) );
  SAEDRVT14_INV_0P5 U85 ( .A(n5), .X(n255) );
  SAEDRVT14_NR3_1 U86 ( .A1(n133), .A2(n145), .A3(n255), .X(n92) );
  SAEDRVT14_OAI21_0P5 U87 ( .A1(n92), .A2(n194), .B(n156), .X(n188) );
  SAEDRVT14_AOI21_0P5 U88 ( .A1(n93), .A2(n152), .B(n188), .X(n258) );
  SAEDRVT14_AO21_1 U89 ( .A1(next_address[2]), .A2(n263), .B(n96), .X(n59) );
  SAEDRVT14_NR2_1 U90 ( .A1(n194), .A2(n98), .X(n205) );
  SAEDRVT14_INV_0P75 U91 ( .A(n97), .X(n132) );
  SAEDRVT14_OAI21_0P5 U92 ( .A1(n134), .A2(n98), .B(n132), .X(n202) );
  SAEDRVT14_OAI21_0P5 U93 ( .A1(address_out[7]), .A2(n194), .B(n202), .X(n99)
         );
  SAEDRVT14_AO32_U_0P5 U94 ( .A1(address_out[7]), .A2(n164), .A3(n205), .B1(
        address_out[8]), .B2(n99), .X(n100) );
  SAEDRVT14_AO21_1 U95 ( .A1(next_address[8]), .A2(n263), .B(n100), .X(n65) );
  SAEDRVT14_NR2_1 U96 ( .A1(n194), .A2(n101), .X(n210) );
  SAEDRVT14_OAI21_0P5 U97 ( .A1(n134), .A2(n101), .B(n132), .X(n207) );
  SAEDRVT14_OAI21_0P5 U98 ( .A1(address_out[9]), .A2(n194), .B(n207), .X(n102)
         );
  SAEDRVT14_AO32_U_0P5 U99 ( .A1(address_out[9]), .A2(n186), .A3(n210), .B1(
        n22), .B2(n102), .X(n103) );
  SAEDRVT14_AO21_1 U100 ( .A1(next_address[10]), .A2(n263), .B(n103), .X(n67)
         );
  SAEDRVT14_NR2_1 U101 ( .A1(n194), .A2(n104), .X(n200) );
  SAEDRVT14_OAI21_0P5 U102 ( .A1(n114), .A2(n104), .B(n187), .X(n197) );
  SAEDRVT14_OAI21_0P5 U103 ( .A1(address_out[5]), .A2(n194), .B(n197), .X(n105) );
  SAEDRVT14_AO32_U_0P5 U104 ( .A1(address_out[5]), .A2(n168), .A3(n200), .B1(
        address_out[6]), .B2(n105), .X(n106) );
  SAEDRVT14_NR2_1 U105 ( .A1(n194), .A2(n107), .X(n215) );
  SAEDRVT14_OAI21_0P5 U106 ( .A1(n114), .A2(n107), .B(n132), .X(n212) );
  SAEDRVT14_OAI21_0P5 U107 ( .A1(n21), .A2(n194), .B(n212), .X(n108) );
  SAEDRVT14_AO21_1 U108 ( .A1(next_address[12]), .A2(n263), .B(n109), .X(n69)
         );
  SAEDRVT14_OAI21_0P5 U109 ( .A1(address_out[2]), .A2(n194), .B(n156), .X(n191) );
  SAEDRVT14_AO222_1 U110 ( .A1(n191), .A2(address_out[3]), .B1(n232), .B2(
        next_address[3]), .C1(address_out[2]), .C2(n192), .X(n60) );
  SAEDRVT14_OAI21_0P5 U111 ( .A1(n114), .A2(n110), .B(n132), .X(n217) );
  SAEDRVT14_OAI21_0P5 U112 ( .A1(n19), .A2(n194), .B(n217), .X(n111) );
  SAEDRVT14_AO32_U_0P5 U113 ( .A1(n19), .A2(n159), .A3(n220), .B1(n18), .B2(
        n111), .X(n112) );
  SAEDRVT14_AO21_1 U114 ( .A1(next_address[14]), .A2(n263), .B(n112), .X(n71)
         );
  SAEDRVT14_NR2_1 U115 ( .A1(n194), .A2(n113), .X(n225) );
  SAEDRVT14_OAI21_0P5 U116 ( .A1(n114), .A2(n113), .B(n132), .X(n222) );
  SAEDRVT14_OAI21_0P5 U117 ( .A1(n17), .A2(n194), .B(n222), .X(n115) );
  SAEDRVT14_AO32_U_0P5 U118 ( .A1(n17), .A2(n179), .A3(n225), .B1(n16), .B2(
        n115), .X(n116) );
  SAEDRVT14_AO21_1 U119 ( .A1(next_address[16]), .A2(n263), .B(n116), .X(n73)
         );
  SAEDRVT14_NR2_1 U120 ( .A1(n194), .A2(n117), .X(n230) );
  SAEDRVT14_OAI21_0P5 U121 ( .A1(n134), .A2(n117), .B(n132), .X(n227) );
  SAEDRVT14_OAI21_0P5 U122 ( .A1(n15), .A2(n194), .B(n227), .X(n118) );
  SAEDRVT14_AO32_U_0P5 U123 ( .A1(n15), .A2(n175), .A3(n230), .B1(n14), .B2(
        n118), .X(n119) );
  SAEDRVT14_NR2_1 U124 ( .A1(n194), .A2(n120), .X(n236) );
  SAEDRVT14_OAI21_0P5 U125 ( .A1(n134), .A2(n120), .B(n132), .X(n233) );
  SAEDRVT14_OAI21_0P5 U126 ( .A1(n13), .A2(n194), .B(n233), .X(n121) );
  SAEDRVT14_AO32_U_0P5 U127 ( .A1(n13), .A2(n147), .A3(n236), .B1(n12), .B2(
        n121), .X(n122) );
  SAEDRVT14_AO21_1 U128 ( .A1(next_address[20]), .A2(n263), .B(n122), .X(n77)
         );
  SAEDRVT14_NR2_1 U129 ( .A1(n194), .A2(n123), .X(n241) );
  SAEDRVT14_OAI21_0P5 U130 ( .A1(n134), .A2(n123), .B(n132), .X(n238) );
  SAEDRVT14_OAI21_0P5 U131 ( .A1(n11), .A2(n194), .B(n238), .X(n124) );
  SAEDRVT14_AO21_1 U132 ( .A1(next_address[22]), .A2(n263), .B(n125), .X(n79)
         );
  SAEDRVT14_OAI21_0P5 U133 ( .A1(n134), .A2(n126), .B(n132), .X(n243) );
  SAEDRVT14_OAI21_0P5 U134 ( .A1(n9), .A2(n194), .B(n243), .X(n127) );
  SAEDRVT14_AO32_U_0P5 U135 ( .A1(n9), .A2(n142), .A3(n246), .B1(n8), .B2(n127), .X(n128) );
  SAEDRVT14_AO21_1 U136 ( .A1(next_address[24]), .A2(n232), .B(n128), .X(n81)
         );
  SAEDRVT14_NR2_1 U137 ( .A1(n194), .A2(n129), .X(n251) );
  SAEDRVT14_OAI21_0P5 U138 ( .A1(n134), .A2(n129), .B(n132), .X(n248) );
  SAEDRVT14_OAI21_0P5 U139 ( .A1(n7), .A2(n194), .B(n248), .X(n130) );
  SAEDRVT14_AO32_U_0P5 U140 ( .A1(n7), .A2(n183), .A3(n251), .B1(n6), .B2(n130), .X(n131) );
  SAEDRVT14_AO21_1 U141 ( .A1(next_address[26]), .A2(n232), .B(n131), .X(n83)
         );
  SAEDRVT14_NR2_1 U142 ( .A1(n194), .A2(n133), .X(n256) );
  SAEDRVT14_OAI21_0P5 U143 ( .A1(n134), .A2(n133), .B(n132), .X(n253) );
  SAEDRVT14_OAI21_0P5 U144 ( .A1(n5), .A2(n194), .B(n253), .X(n135) );
  SAEDRVT14_AO21_1 U145 ( .A1(next_address[28]), .A2(n232), .B(n136), .X(n85)
         );
  SAEDRVT14_BUF_S_0P5 U146 ( .A(rst), .X(n264) );
  SAEDRVT14_BUF_S_0P5 U147 ( .A(n90), .X(n265) );
  SAEDRVT14_MUX2_MM_0P5 U148 ( .D0(pre_address_pc[0]), .D1(N8), .S(n156), .X(
        n25) );
  SAEDRVT14_MUX2_MM_0P5 U149 ( .D0(pre_address_pc[1]), .D1(N9), .S(n156), .X(
        n26) );
  SAEDRVT14_INV_0P5 U150 ( .A(pre_address_pc[2]), .X(n137) );
  SAEDRVT14_OAI22_0P5 U151 ( .A1(n157), .A2(n138), .B1(n156), .B2(n137), .X(
        n27) );
  SAEDRVT14_INV_0P5 U152 ( .A(pre_address_pc[22]), .X(n139) );
  SAEDRVT14_INV_0P5 U153 ( .A(pre_address_pc[24]), .X(n141) );
  SAEDRVT14_INV_0P5 U154 ( .A(pre_address_pc[25]), .X(n143) );
  SAEDRVT14_INV_0P5 U155 ( .A(pre_address_pc[28]), .X(n144) );
  SAEDRVT14_OAI22_0P5 U156 ( .A1(n157), .A2(n145), .B1(n156), .B2(n144), .X(
        n53) );
  SAEDRVT14_INV_0P5 U157 ( .A(pre_address_pc[20]), .X(n146) );
  SAEDRVT14_OAI22_0P5 U158 ( .A1(n157), .A2(n147), .B1(n156), .B2(n146), .X(
        n45) );
  SAEDRVT14_INV_0P5 U159 ( .A(pre_address_pc[21]), .X(n148) );
  SAEDRVT14_OAI22_0P5 U160 ( .A1(n157), .A2(n240), .B1(n156), .B2(n148), .X(
        n46) );
  SAEDRVT14_INV_0P5 U161 ( .A(pre_address_pc[27]), .X(n149) );
  SAEDRVT14_OAI22_0P5 U162 ( .A1(n157), .A2(n255), .B1(n156), .B2(n149), .X(
        n52) );
  SAEDRVT14_INV_0P5 U163 ( .A(pre_address_pc[23]), .X(n150) );
  SAEDRVT14_OAI22_0P5 U164 ( .A1(n157), .A2(n245), .B1(n156), .B2(n150), .X(
        n48) );
  SAEDRVT14_INV_0P5 U165 ( .A(pre_address_pc[29]), .X(n151) );
  SAEDRVT14_OAI22_0P5 U166 ( .A1(n157), .A2(n152), .B1(n156), .B2(n151), .X(
        n54) );
  SAEDRVT14_INV_0P5 U167 ( .A(pre_address_pc[31]), .X(n153) );
  SAEDRVT14_OAI22_0P5 U168 ( .A1(n157), .A2(n154), .B1(n156), .B2(n153), .X(
        n56) );
  SAEDRVT14_INV_0P5 U169 ( .A(pre_address_pc[30]), .X(n155) );
  SAEDRVT14_OAI22_0P5 U170 ( .A1(n157), .A2(n260), .B1(n156), .B2(n155), .X(
        n55) );
  SAEDRVT14_INV_0P5 U171 ( .A(pre_address_pc[14]), .X(n158) );
  SAEDRVT14_INV_0P5 U172 ( .A(pre_address_pc[13]), .X(n160) );
  SAEDRVT14_INV_0P5 U173 ( .A(pre_address_pc[5]), .X(n161) );
  SAEDRVT14_INV_0P5 U174 ( .A(pre_address_pc[11]), .X(n162) );
  SAEDRVT14_INV_0P5 U175 ( .A(pre_address_pc[8]), .X(n163) );
  SAEDRVT14_INV_0P5 U176 ( .A(pre_address_pc[3]), .X(n165) );
  SAEDRVT14_OAI22_0P5 U177 ( .A1(n157), .A2(n166), .B1(n185), .B2(n165), .X(
        n28) );
  SAEDRVT14_INV_0P5 U178 ( .A(pre_address_pc[6]), .X(n167) );
  SAEDRVT14_OAI22_0P5 U179 ( .A1(n157), .A2(n168), .B1(n185), .B2(n167), .X(
        n31) );
  SAEDRVT14_INV_0P5 U180 ( .A(pre_address_pc[12]), .X(n169) );
  SAEDRVT14_OAI22_0P5 U181 ( .A1(n157), .A2(n170), .B1(n185), .B2(n169), .X(
        n37) );
  SAEDRVT14_INV_0P5 U182 ( .A(pre_address_pc[4]), .X(n171) );
  SAEDRVT14_OAI22_0P5 U183 ( .A1(n157), .A2(n172), .B1(n185), .B2(n171), .X(
        n29) );
  SAEDRVT14_INV_0P5 U184 ( .A(pre_address_pc[15]), .X(n173) );
  SAEDRVT14_OAI22_0P5 U185 ( .A1(n157), .A2(n224), .B1(n185), .B2(n173), .X(
        n40) );
  SAEDRVT14_INV_0P5 U186 ( .A(pre_address_pc[18]), .X(n174) );
  SAEDRVT14_OAI22_0P5 U187 ( .A1(n157), .A2(n175), .B1(n185), .B2(n174), .X(
        n43) );
  SAEDRVT14_INV_0P5 U188 ( .A(pre_address_pc[17]), .X(n176) );
  SAEDRVT14_OAI22_0P5 U189 ( .A1(n157), .A2(n229), .B1(n185), .B2(n176), .X(
        n42) );
  SAEDRVT14_INV_0P5 U190 ( .A(pre_address_pc[7]), .X(n177) );
  SAEDRVT14_OAI22_0P5 U191 ( .A1(n157), .A2(n204), .B1(n185), .B2(n177), .X(
        n32) );
  SAEDRVT14_INV_0P5 U192 ( .A(pre_address_pc[16]), .X(n178) );
  SAEDRVT14_OAI22_0P5 U193 ( .A1(n157), .A2(n179), .B1(n185), .B2(n178), .X(
        n41) );
  SAEDRVT14_INV_0P5 U194 ( .A(pre_address_pc[9]), .X(n180) );
  SAEDRVT14_OAI22_0P5 U195 ( .A1(n157), .A2(n209), .B1(n185), .B2(n180), .X(
        n34) );
  SAEDRVT14_INV_0P5 U196 ( .A(pre_address_pc[19]), .X(n181) );
  SAEDRVT14_OAI22_0P5 U197 ( .A1(n157), .A2(n235), .B1(n185), .B2(n181), .X(
        n44) );
  SAEDRVT14_INV_0P5 U198 ( .A(pre_address_pc[26]), .X(n182) );
  SAEDRVT14_OAI22_0P5 U199 ( .A1(n157), .A2(n183), .B1(n185), .B2(n182), .X(
        n51) );
  SAEDRVT14_INV_0P5 U200 ( .A(pre_address_pc[10]), .X(n184) );
  SAEDRVT14_OAI22_0P5 U201 ( .A1(n157), .A2(n186), .B1(n185), .B2(n184), .X(
        n35) );
  SAEDRVT14_MUX2_MM_0P5 U202 ( .D0(next_address[1]), .D1(N9), .S(n187), .X(n58) );
  SAEDRVT14_MUX2_MM_0P5 U203 ( .D0(next_address[0]), .D1(N8), .S(n187), .X(n57) );
  SAEDRVT14_AOI22_1P5 U204 ( .A1(n3), .A2(n188), .B1(next_address[29]), .B2(
        n232), .X(n189) );
  SAEDRVT14_OAI21_0P5 U205 ( .A1(n192), .A2(n191), .B(address_out[4]), .X(n193) );
  SAEDRVT14_OA31_1 U206 ( .A1(address_out[4]), .A2(n195), .A3(n194), .B(n193), 
        .X(n196) );
  SAEDRVT14_AO21B_0P5 U207 ( .A1(next_address[4]), .A2(n263), .B(n196), .X(n61) );
  SAEDRVT14_INV_0P5 U208 ( .A(n197), .X(n198) );
  SAEDRVT14_OAI22_0P5 U209 ( .A1(address_out[5]), .A2(n200), .B1(n199), .B2(
        n198), .X(n201) );
  SAEDRVT14_AO21B_0P5 U210 ( .A1(next_address[5]), .A2(n232), .B(n201), .X(n62) );
  SAEDRVT14_INV_0P5 U211 ( .A(n202), .X(n203) );
  SAEDRVT14_OAI22_0P5 U212 ( .A1(address_out[7]), .A2(n205), .B1(n204), .B2(
        n203), .X(n206) );
  SAEDRVT14_AO21B_0P5 U213 ( .A1(next_address[7]), .A2(n263), .B(n206), .X(n64) );
  SAEDRVT14_INV_0P5 U214 ( .A(n207), .X(n208) );
  SAEDRVT14_OAI22_0P5 U215 ( .A1(address_out[9]), .A2(n210), .B1(n209), .B2(
        n208), .X(n211) );
  SAEDRVT14_AO21B_0P5 U216 ( .A1(next_address[9]), .A2(n232), .B(n211), .X(n66) );
  SAEDRVT14_INV_0P5 U217 ( .A(n212), .X(n213) );
  SAEDRVT14_OAI22_0P5 U218 ( .A1(n21), .A2(n215), .B1(n214), .B2(n213), .X(
        n216) );
  SAEDRVT14_AO21B_0P5 U219 ( .A1(next_address[11]), .A2(n232), .B(n216), .X(
        n68) );
  SAEDRVT14_INV_0P5 U220 ( .A(n217), .X(n218) );
  SAEDRVT14_OAI22_0P5 U221 ( .A1(n19), .A2(n220), .B1(n219), .B2(n218), .X(
        n221) );
  SAEDRVT14_AO21B_0P5 U222 ( .A1(next_address[13]), .A2(n232), .B(n221), .X(
        n70) );
  SAEDRVT14_INV_0P5 U223 ( .A(n222), .X(n223) );
  SAEDRVT14_OAI22_0P5 U224 ( .A1(n17), .A2(n225), .B1(n224), .B2(n223), .X(
        n226) );
  SAEDRVT14_AO21B_0P5 U225 ( .A1(next_address[15]), .A2(n232), .B(n226), .X(
        n72) );
  SAEDRVT14_INV_0P5 U226 ( .A(n227), .X(n228) );
  SAEDRVT14_OAI22_0P5 U227 ( .A1(n15), .A2(n230), .B1(n229), .B2(n228), .X(
        n231) );
  SAEDRVT14_AO21B_0P5 U228 ( .A1(next_address[17]), .A2(n232), .B(n231), .X(
        n74) );
  SAEDRVT14_INV_0P5 U229 ( .A(n233), .X(n234) );
  SAEDRVT14_OAI22_0P5 U230 ( .A1(n13), .A2(n236), .B1(n235), .B2(n234), .X(
        n237) );
  SAEDRVT14_AO21B_0P5 U231 ( .A1(next_address[19]), .A2(n263), .B(n237), .X(
        n76) );
  SAEDRVT14_INV_0P5 U232 ( .A(n238), .X(n239) );
  SAEDRVT14_OAI22_0P5 U233 ( .A1(n11), .A2(n241), .B1(n240), .B2(n239), .X(
        n242) );
  SAEDRVT14_AO21B_0P5 U234 ( .A1(next_address[21]), .A2(n263), .B(n242), .X(
        n78) );
  SAEDRVT14_INV_0P5 U235 ( .A(n243), .X(n244) );
  SAEDRVT14_OAI22_0P5 U236 ( .A1(n9), .A2(n246), .B1(n245), .B2(n244), .X(n247) );
  SAEDRVT14_AO21B_0P5 U237 ( .A1(next_address[23]), .A2(n263), .B(n247), .X(
        n80) );
  SAEDRVT14_INV_0P5 U238 ( .A(n248), .X(n249) );
  SAEDRVT14_OAI22_0P5 U239 ( .A1(n7), .A2(n251), .B1(n250), .B2(n249), .X(n252) );
  SAEDRVT14_AO21B_0P5 U240 ( .A1(next_address[25]), .A2(n263), .B(n252), .X(
        n82) );
  SAEDRVT14_INV_0P5 U241 ( .A(n253), .X(n254) );
  SAEDRVT14_AO21B_0P5 U242 ( .A1(next_address[27]), .A2(n263), .B(n257), .X(
        n84) );
  SAEDRVT14_AO21B_0P5 U243 ( .A1(next_address[30]), .A2(n263), .B(n262), .X(
        n87) );
endmodule


module fetch ( clk, rst, next_sel, valid, load, jalr, branch_reselt, 
        next_address, address_in, instruction_fetch, we_re, request, mask, 
        address_out, instruction, pre_address_pc );
  input [31:0] next_address;
  input [31:0] address_in;
  input [31:0] instruction_fetch;
  output [3:0] mask;
  output [31:0] address_out;
  output [31:0] instruction;
  output [31:0] pre_address_pc;
  input clk, rst, next_sel, valid, load, jalr, branch_reselt;
  output we_re, request;
  wire   net24600, net24601, net24602, net24603, net24604, net24605, net24606,
         net24607, net24608, net24609, net24610, net24611, net24612, net24613,
         net24614, net24615, net24616, net24617, net24618, net24619, net24620,
         net24621, net24622, net24623, net24624, net24625, net24626, net24627,
         net24628, net24629, net24630, net24631;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  pc u_pc0 ( .clk(clk), .rst(rst), .load(load), .jalr(jalr), .next_sel(
        next_sel), .dmem_valid(valid), .branch_reselt(branch_reselt), 
        .next_address(next_address), .address_in({net24600, net24601, net24602, 
        net24603, net24604, net24605, net24606, net24607, net24608, net24609, 
        net24610, net24611, net24612, net24613, net24614, net24615, net24616, 
        net24617, net24618, net24619, net24620, net24621, net24622, net24623, 
        net24624, net24625, net24626, net24627, net24628, net24629, net24630, 
        net24631}), .address_out({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, address_out[9:2], SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}), .pre_address_pc(pre_address_pc) );
  SAEDRVT14_BUF_S_0P5 U4 ( .A(instruction_fetch[0]), .X(instruction[0]) );
  SAEDRVT14_BUF_S_0P5 U5 ( .A(instruction_fetch[15]), .X(instruction[15]) );
  SAEDRVT14_BUF_S_0P5 U6 ( .A(instruction_fetch[30]), .X(instruction[30]) );
  SAEDRVT14_BUF_S_0P5 U7 ( .A(instruction_fetch[1]), .X(instruction[1]) );
  SAEDRVT14_BUF_S_0P5 U8 ( .A(instruction_fetch[2]), .X(instruction[2]) );
  SAEDRVT14_BUF_S_0P5 U9 ( .A(instruction_fetch[3]), .X(instruction[3]) );
  SAEDRVT14_BUF_S_0P5 U10 ( .A(instruction_fetch[4]), .X(instruction[4]) );
  SAEDRVT14_BUF_S_0P5 U11 ( .A(instruction_fetch[5]), .X(instruction[5]) );
  SAEDRVT14_BUF_S_0P5 U12 ( .A(instruction_fetch[6]), .X(instruction[6]) );
  SAEDRVT14_BUF_S_0P5 U13 ( .A(instruction_fetch[7]), .X(instruction[7]) );
  SAEDRVT14_BUF_S_0P5 U14 ( .A(instruction_fetch[8]), .X(instruction[8]) );
  SAEDRVT14_BUF_S_0P5 U15 ( .A(instruction_fetch[9]), .X(instruction[9]) );
  SAEDRVT14_BUF_S_0P5 U16 ( .A(instruction_fetch[10]), .X(instruction[10]) );
  SAEDRVT14_BUF_S_0P5 U17 ( .A(instruction_fetch[11]), .X(instruction[11]) );
  SAEDRVT14_BUF_S_0P5 U18 ( .A(instruction_fetch[12]), .X(instruction[12]) );
  SAEDRVT14_BUF_S_0P5 U19 ( .A(instruction_fetch[13]), .X(instruction[13]) );
  SAEDRVT14_BUF_S_0P5 U20 ( .A(instruction_fetch[14]), .X(instruction[14]) );
  SAEDRVT14_BUF_S_0P5 U21 ( .A(instruction_fetch[16]), .X(instruction[16]) );
  SAEDRVT14_BUF_S_0P5 U22 ( .A(instruction_fetch[17]), .X(instruction[17]) );
  SAEDRVT14_BUF_S_0P5 U23 ( .A(instruction_fetch[18]), .X(instruction[18]) );
  SAEDRVT14_BUF_S_0P5 U24 ( .A(instruction_fetch[19]), .X(instruction[19]) );
  SAEDRVT14_BUF_S_0P5 U25 ( .A(instruction_fetch[20]), .X(instruction[20]) );
  SAEDRVT14_BUF_S_0P5 U26 ( .A(instruction_fetch[21]), .X(instruction[21]) );
  SAEDRVT14_BUF_S_0P5 U27 ( .A(instruction_fetch[22]), .X(instruction[22]) );
  SAEDRVT14_BUF_S_0P5 U28 ( .A(instruction_fetch[23]), .X(instruction[23]) );
  SAEDRVT14_BUF_S_0P5 U29 ( .A(instruction_fetch[24]), .X(instruction[24]) );
  SAEDRVT14_BUF_S_0P5 U30 ( .A(instruction_fetch[25]), .X(instruction[25]) );
  SAEDRVT14_BUF_S_0P5 U31 ( .A(instruction_fetch[26]), .X(instruction[26]) );
  SAEDRVT14_BUF_S_0P5 U32 ( .A(instruction_fetch[27]), .X(instruction[27]) );
  SAEDRVT14_BUF_S_0P5 U33 ( .A(instruction_fetch[28]), .X(instruction[28]) );
  SAEDRVT14_BUF_S_0P5 U34 ( .A(instruction_fetch[29]), .X(instruction[29]) );
  SAEDRVT14_BUF_S_0P5 U35 ( .A(instruction_fetch[31]), .X(instruction[31]) );
  SAEDRVT14_ND2B_U_0P5 U36 ( .A(valid), .B(load), .X(request) );
endmodule


module fetch_pipe ( clk, rst, pre_address_pc, instruction_fetch, next_select, 
        branch_result, jalr, load, pre_address_out, instruction );
  input [31:0] pre_address_pc;
  input [31:0] instruction_fetch;
  output [31:0] pre_address_out;
  output [31:0] instruction;
  input clk, rst, next_select, branch_result, jalr, load;
  wire   flush_pipeline, flush_pipeline2, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78;

  SAEDRVT14_FDPRBQ_V2_0P5 flush_pipeline_reg ( .D(n66), .CK(clk), .RD(n77), 
        .Q(flush_pipeline) );
  SAEDRVT14_FDPRBQ_V2_0P5 flush_pipeline2_reg ( .D(n65), .CK(clk), .RD(n77), 
        .Q(flush_pipeline2) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[31]  ( .D(n64), .CK(clk), .RD(n77), 
        .Q(pre_address_out[31]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[30]  ( .D(n63), .CK(clk), .RD(n77), 
        .Q(pre_address_out[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[29]  ( .D(n62), .CK(clk), .RD(n77), 
        .Q(pre_address_out[29]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[28]  ( .D(n61), .CK(clk), .RD(n77), 
        .Q(pre_address_out[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[27]  ( .D(n60), .CK(clk), .RD(n77), 
        .Q(pre_address_out[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[26]  ( .D(n59), .CK(clk), .RD(n77), 
        .Q(pre_address_out[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[25]  ( .D(n58), .CK(clk), .RD(n77), 
        .Q(pre_address_out[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[24]  ( .D(n57), .CK(clk), .RD(n77), 
        .Q(pre_address_out[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[23]  ( .D(n56), .CK(clk), .RD(n77), 
        .Q(pre_address_out[23]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[22]  ( .D(n55), .CK(clk), .RD(n77), 
        .Q(pre_address_out[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[20]  ( .D(n53), .CK(clk), .RD(n77), 
        .Q(pre_address_out[20]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[19]  ( .D(n52), .CK(clk), .RD(n77), 
        .Q(pre_address_out[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[18]  ( .D(n51), .CK(clk), .RD(n77), 
        .Q(pre_address_out[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[17]  ( .D(n50), .CK(clk), .RD(n77), 
        .Q(pre_address_out[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[16]  ( .D(n49), .CK(clk), .RD(n77), 
        .Q(pre_address_out[16]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[15]  ( .D(n48), .CK(clk), .RD(n70), 
        .Q(pre_address_out[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[14]  ( .D(n47), .CK(clk), .RD(n70), 
        .Q(pre_address_out[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[13]  ( .D(n46), .CK(clk), .RD(n70), 
        .Q(pre_address_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[12]  ( .D(n45), .CK(clk), .RD(n70), 
        .Q(pre_address_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[11]  ( .D(n44), .CK(clk), .RD(n70), 
        .Q(pre_address_out[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[10]  ( .D(n43), .CK(clk), .RD(n70), 
        .Q(pre_address_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[9]  ( .D(n42), .CK(clk), .RD(n70), 
        .Q(pre_address_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[8]  ( .D(n41), .CK(clk), .RD(n70), 
        .Q(pre_address_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[7]  ( .D(n40), .CK(clk), .RD(n70), 
        .Q(pre_address_out[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[5]  ( .D(n38), .CK(clk), .RD(n70), 
        .Q(pre_address_out[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[4]  ( .D(n37), .CK(clk), .RD(n70), 
        .Q(pre_address_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[3]  ( .D(n36), .CK(clk), .RD(n70), 
        .Q(pre_address_out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[2]  ( .D(n35), .CK(clk), .RD(n70), 
        .Q(pre_address_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[1]  ( .D(n34), .CK(clk), .RD(n70), 
        .Q(pre_address_out[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \pre_address_reg[0]  ( .D(n33), .CK(clk), .RD(n70), 
        .Q(pre_address_out[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[31]  ( .D(n32), .CK(clk), .RD(n77), .Q(
        instruction[31]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[30]  ( .D(n31), .CK(clk), .RD(n77), .Q(
        instruction[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[29]  ( .D(n30), .CK(clk), .RD(n77), .Q(
        instruction[29]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[28]  ( .D(n29), .CK(clk), .RD(n77), .Q(
        instruction[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[27]  ( .D(n28), .CK(clk), .RD(n77), .Q(
        instruction[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[26]  ( .D(n27), .CK(clk), .RD(n77), .Q(
        instruction[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[25]  ( .D(n26), .CK(clk), .RD(rst), .Q(
        instruction[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[24]  ( .D(n25), .CK(clk), .RD(n77), .Q(
        instruction[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[22]  ( .D(n23), .CK(clk), .RD(n78), .Q(
        instruction[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[21]  ( .D(n22), .CK(clk), .RD(n78), .Q(
        instruction[21]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[20]  ( .D(n21), .CK(clk), .RD(n78), .Q(
        instruction[20]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[19]  ( .D(n20), .CK(clk), .RD(n78), .Q(
        instruction[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[18]  ( .D(n19), .CK(clk), .RD(n78), .Q(
        instruction[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[17]  ( .D(n18), .CK(clk), .RD(n78), .Q(
        instruction[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[16]  ( .D(n17), .CK(clk), .RD(n78), .Q(
        instruction[16]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[15]  ( .D(n16), .CK(clk), .RD(n77), .Q(
        instruction[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[14]  ( .D(n15), .CK(clk), .RD(n77), .Q(
        instruction[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[13]  ( .D(n14), .CK(clk), .RD(n77), .Q(
        instruction[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[12]  ( .D(n13), .CK(clk), .RD(n77), .Q(
        instruction[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[11]  ( .D(n12), .CK(clk), .RD(n77), .Q(
        instruction[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[10]  ( .D(n11), .CK(clk), .RD(n77), .Q(
        instruction[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[9]  ( .D(n10), .CK(clk), .RD(n77), .Q(
        instruction[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[7]  ( .D(n8), .CK(clk), .RD(n70), .Q(
        instruction[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[6]  ( .D(n7), .CK(clk), .RD(n70), .Q(
        instruction[6]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[5]  ( .D(n6), .CK(clk), .RD(n70), .Q(
        instruction[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[4]  ( .D(n5), .CK(clk), .RD(n70), .Q(
        instruction[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[3]  ( .D(n4), .CK(clk), .RD(n70), .Q(
        instruction[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[2]  ( .D(n3), .CK(clk), .RD(n70), .Q(
        instruction[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[1]  ( .D(n2), .CK(clk), .RD(n70), .Q(
        instruction[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruc_reg[0]  ( .D(n1), .CK(clk), .RD(n70), .Q(
        instruction[0]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \pre_address_reg[21]  ( .D(n54), .CK(clk), .RD(n77), .Q(pre_address_out[21]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \pre_address_reg[6]  ( .D(n39), .CK(clk), .RD(n70), 
        .Q(pre_address_out[6]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \instruc_reg[23]  ( .D(n24), .CK(clk), .RD(n78), 
        .Q(instruction[23]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \instruc_reg[8]  ( .D(n9), .CK(clk), .RD(n77), .Q(
        instruction[8]) );
  SAEDRVT14_BUF_1 U3 ( .A(n75), .X(n76) );
  SAEDRVT14_BUF_S_6 U4 ( .A(rst), .X(n77) );
  SAEDRVT14_BUF_S_6 U5 ( .A(n71), .X(n67) );
  SAEDRVT14_BUF_3 U6 ( .A(n75), .X(n69) );
  SAEDRVT14_BUF_3 U7 ( .A(n77), .X(n70) );
  SAEDRVT14_BUF_3 U8 ( .A(n74), .X(n71) );
  SAEDRVT14_BUF_3 U9 ( .A(n75), .X(n72) );
  SAEDRVT14_AO22_0P75 U10 ( .A1(n71), .A2(instruction_fetch[7]), .B1(n72), 
        .B2(instruction[7]), .X(n8) );
  SAEDRVT14_AO22_0P75 U11 ( .A1(n71), .A2(instruction_fetch[20]), .B1(n69), 
        .B2(instruction[20]), .X(n21) );
  SAEDRVT14_AO22_0P75 U12 ( .A1(n67), .A2(pre_address_pc[1]), .B1(n69), .B2(
        pre_address_out[1]), .X(n34) );
  SAEDRVT14_AO22_0P75 U13 ( .A1(n71), .A2(pre_address_pc[28]), .B1(n72), .B2(
        pre_address_out[28]), .X(n61) );
  SAEDRVT14_OR3_0P5 U14 ( .A1(branch_result), .A2(jalr), .A3(next_select), .X(
        n66) );
  SAEDRVT14_OR3_0P5 U15 ( .A1(flush_pipeline2), .A2(flush_pipeline), .A3(n66), 
        .X(n73) );
  SAEDRVT14_NR2_1 U16 ( .A1(load), .A2(n73), .X(n74) );
  SAEDRVT14_AN2B_MM_1 U17 ( .B(load), .A(n73), .X(n75) );
  SAEDRVT14_AO22_0P75 U18 ( .A1(n67), .A2(instruction_fetch[4]), .B1(n72), 
        .B2(instruction[4]), .X(n5) );
  SAEDRVT14_AO22_0P75 U19 ( .A1(n67), .A2(instruction_fetch[26]), .B1(n76), 
        .B2(instruction[26]), .X(n27) );
  SAEDRVT14_AO22_0P75 U20 ( .A1(n67), .A2(instruction_fetch[25]), .B1(n76), 
        .B2(instruction[25]), .X(n26) );
  SAEDRVT14_AO22_0P75 U21 ( .A1(n67), .A2(instruction_fetch[24]), .B1(n76), 
        .B2(instruction[24]), .X(n25) );
  SAEDRVT14_AO22_0P75 U22 ( .A1(n67), .A2(instruction_fetch[23]), .B1(n69), 
        .B2(instruction[23]), .X(n24) );
  SAEDRVT14_AO22_0P75 U23 ( .A1(n67), .A2(instruction_fetch[22]), .B1(n69), 
        .B2(instruction[22]), .X(n23) );
  SAEDRVT14_AO22_0P75 U24 ( .A1(n67), .A2(instruction_fetch[31]), .B1(n76), 
        .B2(instruction[31]), .X(n32) );
  SAEDRVT14_AO22_0P75 U25 ( .A1(n67), .A2(pre_address_pc[13]), .B1(n72), .B2(
        pre_address_out[13]), .X(n46) );
  SAEDRVT14_AO22_0P75 U26 ( .A1(n67), .A2(instruction_fetch[27]), .B1(n76), 
        .B2(instruction[27]), .X(n28) );
  SAEDRVT14_AO22_0P75 U27 ( .A1(n67), .A2(instruction_fetch[30]), .B1(n76), 
        .B2(instruction[30]), .X(n31) );
  SAEDRVT14_AO22_0P75 U28 ( .A1(n67), .A2(instruction_fetch[29]), .B1(n76), 
        .B2(instruction[29]), .X(n30) );
  SAEDRVT14_AO22_0P75 U29 ( .A1(n67), .A2(pre_address_pc[9]), .B1(n69), .B2(
        pre_address_out[9]), .X(n42) );
  SAEDRVT14_AO22_0P75 U30 ( .A1(n67), .A2(instruction_fetch[28]), .B1(n76), 
        .B2(instruction[28]), .X(n29) );
  SAEDRVT14_AO22_0P75 U31 ( .A1(n67), .A2(instruction_fetch[11]), .B1(n69), 
        .B2(instruction[11]), .X(n12) );
  SAEDRVT14_AO22_0P75 U32 ( .A1(n67), .A2(instruction_fetch[9]), .B1(n69), 
        .B2(instruction[9]), .X(n10) );
  SAEDRVT14_AO22_0P75 U33 ( .A1(n67), .A2(instruction_fetch[10]), .B1(n69), 
        .B2(instruction[10]), .X(n11) );
  SAEDRVT14_AO22_0P75 U34 ( .A1(n67), .A2(instruction_fetch[14]), .B1(n69), 
        .B2(instruction[14]), .X(n15) );
  SAEDRVT14_AO22_0P75 U35 ( .A1(n67), .A2(pre_address_pc[12]), .B1(n69), .B2(
        pre_address_out[12]), .X(n45) );
  SAEDRVT14_AO22_0P75 U36 ( .A1(n67), .A2(instruction_fetch[12]), .B1(n69), 
        .B2(instruction[12]), .X(n13) );
  SAEDRVT14_AO22_0P75 U37 ( .A1(n67), .A2(pre_address_pc[8]), .B1(n76), .B2(
        pre_address_out[8]), .X(n41) );
  SAEDRVT14_AO22_0P75 U38 ( .A1(n67), .A2(instruction_fetch[15]), .B1(n69), 
        .B2(instruction[15]), .X(n16) );
  SAEDRVT14_AO22_0P75 U39 ( .A1(n67), .A2(instruction_fetch[13]), .B1(n69), 
        .B2(instruction[13]), .X(n14) );
  SAEDRVT14_AO22_0P75 U40 ( .A1(n67), .A2(instruction_fetch[8]), .B1(n69), 
        .B2(instruction[8]), .X(n9) );
  SAEDRVT14_BUF_S_0P5 U41 ( .A(n77), .X(n78) );
  SAEDRVT14_MUX2_MM_0P5 U42 ( .D0(flush_pipeline), .D1(flush_pipeline2), .S(
        n66), .X(n65) );
  SAEDRVT14_AO22_0P75 U43 ( .A1(n74), .A2(pre_address_pc[17]), .B1(n75), .B2(
        pre_address_out[17]), .X(n50) );
  SAEDRVT14_AO22_0P75 U44 ( .A1(n74), .A2(pre_address_pc[18]), .B1(n75), .B2(
        pre_address_out[18]), .X(n51) );
  SAEDRVT14_AO22_0P75 U45 ( .A1(n74), .A2(pre_address_pc[16]), .B1(n75), .B2(
        pre_address_out[16]), .X(n49) );
  SAEDRVT14_AO22_0P75 U46 ( .A1(n74), .A2(pre_address_pc[21]), .B1(n72), .B2(
        pre_address_out[21]), .X(n54) );
  SAEDRVT14_AO22_0P75 U47 ( .A1(n74), .A2(pre_address_pc[30]), .B1(n72), .B2(
        pre_address_out[30]), .X(n63) );
  SAEDRVT14_AO22_0P75 U48 ( .A1(n74), .A2(pre_address_pc[31]), .B1(n72), .B2(
        pre_address_out[31]), .X(n64) );
  SAEDRVT14_AO22_0P75 U49 ( .A1(n74), .A2(pre_address_pc[22]), .B1(n69), .B2(
        pre_address_out[22]), .X(n55) );
  SAEDRVT14_AO22_0P75 U50 ( .A1(n71), .A2(instruction_fetch[21]), .B1(n69), 
        .B2(instruction[21]), .X(n22) );
  SAEDRVT14_AO22_0P75 U51 ( .A1(n71), .A2(instruction_fetch[18]), .B1(n69), 
        .B2(instruction[18]), .X(n19) );
  SAEDRVT14_AO22_0P75 U52 ( .A1(n71), .A2(instruction_fetch[17]), .B1(n69), 
        .B2(instruction[17]), .X(n18) );
  SAEDRVT14_AO22_0P75 U53 ( .A1(n71), .A2(pre_address_pc[24]), .B1(n72), .B2(
        pre_address_out[24]), .X(n57) );
  SAEDRVT14_AO22_0P75 U54 ( .A1(n71), .A2(pre_address_pc[23]), .B1(n72), .B2(
        pre_address_out[23]), .X(n56) );
  SAEDRVT14_AO22_0P75 U55 ( .A1(n71), .A2(pre_address_pc[27]), .B1(n72), .B2(
        pre_address_out[27]), .X(n60) );
  SAEDRVT14_AO22_0P75 U56 ( .A1(n71), .A2(instruction_fetch[16]), .B1(n69), 
        .B2(instruction[16]), .X(n17) );
  SAEDRVT14_AO22_0P75 U57 ( .A1(n71), .A2(pre_address_pc[19]), .B1(n72), .B2(
        pre_address_out[19]), .X(n52) );
  SAEDRVT14_AO22_0P75 U58 ( .A1(n71), .A2(pre_address_pc[25]), .B1(n72), .B2(
        pre_address_out[25]), .X(n58) );
  SAEDRVT14_AO22_0P75 U59 ( .A1(n71), .A2(pre_address_pc[11]), .B1(n76), .B2(
        pre_address_out[11]), .X(n44) );
  SAEDRVT14_AO22_0P75 U60 ( .A1(n71), .A2(instruction_fetch[19]), .B1(n69), 
        .B2(instruction[19]), .X(n20) );
  SAEDRVT14_AO22_0P75 U61 ( .A1(n71), .A2(instruction_fetch[6]), .B1(n72), 
        .B2(instruction[6]), .X(n7) );
  SAEDRVT14_AO22_0P75 U62 ( .A1(n71), .A2(pre_address_pc[20]), .B1(n69), .B2(
        pre_address_out[20]), .X(n53) );
  SAEDRVT14_AO22_0P75 U63 ( .A1(n71), .A2(pre_address_pc[10]), .B1(n72), .B2(
        pre_address_out[10]), .X(n43) );
  SAEDRVT14_AO22_0P75 U64 ( .A1(n71), .A2(pre_address_pc[26]), .B1(n72), .B2(
        pre_address_out[26]), .X(n59) );
  SAEDRVT14_AO22_0P75 U65 ( .A1(n71), .A2(pre_address_pc[29]), .B1(n72), .B2(
        pre_address_out[29]), .X(n62) );
  SAEDRVT14_AO22_0P75 U66 ( .A1(n71), .A2(instruction_fetch[1]), .B1(n72), 
        .B2(instruction[1]), .X(n2) );
  SAEDRVT14_AO22_0P75 U67 ( .A1(n71), .A2(instruction_fetch[0]), .B1(n72), 
        .B2(instruction[0]), .X(n1) );
  SAEDRVT14_AO22_0P75 U68 ( .A1(n67), .A2(pre_address_pc[7]), .B1(n69), .B2(
        pre_address_out[7]), .X(n40) );
  SAEDRVT14_AO22_0P75 U69 ( .A1(n67), .A2(pre_address_pc[0]), .B1(n75), .B2(
        pre_address_out[0]), .X(n33) );
  SAEDRVT14_AO22_0P75 U70 ( .A1(n67), .A2(pre_address_pc[5]), .B1(n72), .B2(
        pre_address_out[5]), .X(n38) );
  SAEDRVT14_AO22_0P75 U71 ( .A1(n67), .A2(pre_address_pc[3]), .B1(n69), .B2(
        pre_address_out[3]), .X(n36) );
  SAEDRVT14_AO22_0P75 U72 ( .A1(n67), .A2(pre_address_pc[2]), .B1(n76), .B2(
        pre_address_out[2]), .X(n35) );
  SAEDRVT14_AO22_0P75 U73 ( .A1(n67), .A2(pre_address_pc[15]), .B1(n69), .B2(
        pre_address_out[15]), .X(n48) );
  SAEDRVT14_AO22_0P75 U74 ( .A1(n67), .A2(pre_address_pc[14]), .B1(n76), .B2(
        pre_address_out[14]), .X(n47) );
  SAEDRVT14_AO22_0P75 U75 ( .A1(n67), .A2(pre_address_pc[4]), .B1(n72), .B2(
        pre_address_out[4]), .X(n37) );
  SAEDRVT14_AO22_0P75 U76 ( .A1(n67), .A2(pre_address_pc[6]), .B1(n72), .B2(
        pre_address_out[6]), .X(n39) );
  SAEDRVT14_AO22_0P75 U77 ( .A1(n67), .A2(instruction_fetch[2]), .B1(n72), 
        .B2(instruction[2]), .X(n3) );
  SAEDRVT14_AO22_0P75 U78 ( .A1(n71), .A2(instruction_fetch[3]), .B1(n72), 
        .B2(instruction[3]), .X(n4) );
  SAEDRVT14_AO22_0P75 U79 ( .A1(n71), .A2(instruction_fetch[5]), .B1(n72), 
        .B2(instruction[5]), .X(n6) );
endmodule


module type_decoder ( opcode, r_type, i_type, load, store, branch, jal, jalr, 
        lui, auipc, valid, load_signal_controller );
  input [6:0] opcode;
  input valid, load_signal_controller;
  output r_type, i_type, load, store, branch, jal, jalr, lui, auipc;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  SAEDRVT14_ND2_CDC_1 U3 ( .A1(opcode[1]), .A2(opcode[0]), .X(n1) );
  SAEDRVT14_OR3_0P5 U4 ( .A1(opcode[3]), .A2(opcode[6]), .A3(n1), .X(n3) );
  SAEDRVT14_NR2_1 U5 ( .A1(opcode[2]), .A2(n3), .X(n9) );
  SAEDRVT14_NR2_1 U6 ( .A1(valid), .A2(load_signal_controller), .X(n2) );
  SAEDRVT14_INV_0P5 U7 ( .A(opcode[4]), .X(n4) );
  SAEDRVT14_INV_0P5 U8 ( .A(opcode[5]), .X(n8) );
  SAEDRVT14_AN4_1 U9 ( .A1(n9), .A2(n2), .A3(n4), .A4(n8), .X(load) );
  SAEDRVT14_NR2_1 U10 ( .A1(opcode[4]), .A2(n8), .X(n10) );
  SAEDRVT14_AN4_1 U11 ( .A1(n10), .A2(opcode[1]), .A3(opcode[0]), .A4(
        opcode[6]), .X(n13) );
  SAEDRVT14_ND2_CDC_1 U12 ( .A1(n13), .A2(opcode[2]), .X(n5) );
  SAEDRVT14_NR2_1 U13 ( .A1(opcode[3]), .A2(n5), .X(jalr) );
  SAEDRVT14_INV_0P5 U14 ( .A(opcode[2]), .X(n11) );
  SAEDRVT14_OR3_0P5 U15 ( .A1(n4), .A2(n11), .A3(n3), .X(n7) );
  SAEDRVT14_NR2_1 U16 ( .A1(opcode[5]), .A2(n7), .X(auipc) );
  SAEDRVT14_INV_0P5 U17 ( .A(opcode[3]), .X(n12) );
  SAEDRVT14_NR2_1 U18 ( .A1(n12), .A2(n5), .X(jal) );
  SAEDRVT14_ND2_CDC_1 U19 ( .A1(opcode[4]), .A2(n9), .X(n6) );
  SAEDRVT14_NR2_1 U20 ( .A1(n8), .A2(n6), .X(r_type) );
  SAEDRVT14_NR2_1 U21 ( .A1(opcode[5]), .A2(n6), .X(i_type) );
  SAEDRVT14_NR2_1 U22 ( .A1(n8), .A2(n7), .X(lui) );
  SAEDRVT14_AN2_MM_0P5 U23 ( .A1(n10), .A2(n9), .X(store) );
  SAEDRVT14_AN3_0P5 U24 ( .A1(n13), .A2(n12), .A3(n11), .X(branch) );
endmodule


module control_decoder ( fun3, fun7, i_type, r_type, load, store, branch, jal, 
        jalr, lui, auipc, load_control, Load, Store, jalr_out, mem_to_reg, 
        reg_write, mem_en, operand_b, operand_a, imm_sel, Branch, next_sel, 
        alu_control );
  input [2:0] fun3;
  output [1:0] mem_to_reg;
  output [2:0] imm_sel;
  output [3:0] alu_control;
  input fun7, i_type, r_type, load, store, branch, jal, jalr, lui, auipc,
         load_control;
  output Load, Store, jalr_out, reg_write, mem_en, operand_b, operand_a,
         Branch, next_sel;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56;

  SAEDRVT14_OAI21_0P5 U3 ( .A1(fun3[1]), .A2(n29), .B(n45), .X(n31) );
  SAEDRVT14_ND2_CDC_1 U4 ( .A1(n40), .A2(n45), .X(n53) );
  SAEDRVT14_AO21_1 U5 ( .A1(n52), .A2(n53), .B(n32), .X(alu_control[1]) );
  SAEDRVT14_OAI21_0P5 U6 ( .A1(n25), .A2(n26), .B(n45), .X(n38) );
  SAEDRVT14_INV_0P5 U7 ( .A(n35), .X(n25) );
  SAEDRVT14_ND2_CDC_1 U8 ( .A1(n34), .A2(n33), .X(n26) );
  SAEDRVT14_ND2_CDC_1 U9 ( .A1(n27), .A2(n28), .X(n36) );
  SAEDRVT14_NR2_1 U10 ( .A1(fun7), .A2(n29), .X(n27) );
  SAEDRVT14_ND2_CDC_1 U11 ( .A1(n45), .A2(n33), .X(n28) );
  SAEDRVT14_BUF_S_0P5 U12 ( .A(jal), .X(next_sel) );
  SAEDRVT14_BUF_S_0P5 U13 ( .A(branch), .X(Branch) );
  SAEDRVT14_BUF_S_0P5 U14 ( .A(store), .X(Store) );
  SAEDRVT14_BUF_S_0P5 U15 ( .A(jalr), .X(jalr_out) );
  SAEDRVT14_BUF_S_0P5 U16 ( .A(load), .X(Load) );
  SAEDRVT14_INV_0P5 U17 ( .A(fun3[2]), .X(n34) );
  SAEDRVT14_ND2B_1P5 U18 ( .A(jalr), .B(lui), .X(n45) );
  SAEDRVT14_INV_0P5 U19 ( .A(fun3[1]), .X(n33) );
  SAEDRVT14_NR2_1 U20 ( .A1(jalr), .A2(auipc), .X(n42) );
  SAEDRVT14_AO21B_0P5 U21 ( .A1(n42), .A2(r_type), .B(n45), .X(n35) );
  SAEDRVT14_AOI21_0P5 U22 ( .A1(n42), .A2(i_type), .B(n35), .X(n29) );
  SAEDRVT14_OAI21_0P5 U23 ( .A1(n34), .A2(n36), .B(n45), .X(alu_control[3]) );
  SAEDRVT14_NR2_1 U24 ( .A1(branch), .A2(jal), .X(n44) );
  SAEDRVT14_INV_0P5 U25 ( .A(auipc), .X(n46) );
  SAEDRVT14_ND2_CDC_1 U26 ( .A1(n44), .A2(n46), .X(operand_a) );
  SAEDRVT14_ND2_CDC_1 U27 ( .A1(fun3[2]), .A2(n31), .X(n37) );
  SAEDRVT14_ND2_CDC_1 U28 ( .A1(n45), .A2(n37), .X(n52) );
  SAEDRVT14_INV_0P5 U29 ( .A(fun3[0]), .X(n40) );
  SAEDRVT14_INV_0P5 U30 ( .A(fun7), .X(n54) );
  SAEDRVT14_NR2_1 U31 ( .A1(fun3[2]), .A2(n36), .X(n30) );
  SAEDRVT14_AO32_U_0P5 U32 ( .A1(fun3[0]), .A2(n54), .A3(n31), .B1(n40), .B2(
        n30), .X(n32) );
  SAEDRVT14_OAI22_0P5 U33 ( .A1(fun7), .A2(n37), .B1(fun3[2]), .B2(n36), .X(
        n56) );
  SAEDRVT14_AOI21_0P5 U34 ( .A1(fun7), .A2(n38), .B(n56), .X(n41) );
  SAEDRVT14_AOI21_0P5 U35 ( .A1(fun7), .A2(n52), .B(alu_control[3]), .X(n39)
         );
  SAEDRVT14_OAI22_0P5 U36 ( .A1(fun3[0]), .A2(n41), .B1(n40), .B2(n39), .X(
        alu_control[0]) );
  SAEDRVT14_INV_0P5 U37 ( .A(n42), .X(n43) );
  SAEDRVT14_OR4_1 U38 ( .A1(lui), .A2(i_type), .A3(r_type), .A4(n43), .X(n49)
         );
  SAEDRVT14_NR4_0P75 U39 ( .A1(store), .A2(load), .A3(n44), .A4(n49), .X(
        imm_sel[1]) );
  SAEDRVT14_OAI21_0P5 U40 ( .A1(jalr), .A2(n46), .B(n45), .X(imm_sel[2]) );
  SAEDRVT14_ND2B_U_0P5 U41 ( .A(branch), .B(jal), .X(n47) );
  SAEDRVT14_OA21B_1 U42 ( .A1(load), .A2(n47), .B(store), .X(n48) );
  SAEDRVT14_NR2_1 U43 ( .A1(n49), .A2(n48), .X(imm_sel[0]) );
  SAEDRVT14_OR2_MM_0P5 U44 ( .A1(store), .A2(load), .X(n51) );
  SAEDRVT14_OR2_MM_0P5 U45 ( .A1(lui), .A2(i_type), .X(n50) );
  SAEDRVT14_OR4_1 U46 ( .A1(jalr), .A2(n51), .A3(n50), .A4(operand_a), .X(
        operand_b) );
  SAEDRVT14_OAI21_0P5 U47 ( .A1(n54), .A2(n53), .B(n52), .X(n55) );
  SAEDRVT14_AO21B_0P5 U48 ( .A1(fun3[0]), .A2(n56), .B(n55), .X(alu_control[2]) );
endmodule


module controlunit ( opcode, fun3, fun7, valid, load_control, reg_write, 
        imm_sel, operand_b, operand_a, mem_to_reg, Load, jalr_out, Store, 
        Branch, mem_en, next_sel, alu_control );
  input [6:0] opcode;
  input [2:0] fun3;
  output [2:0] imm_sel;
  output [1:0] mem_to_reg;
  output [3:0] alu_control;
  input fun7, valid, load_control;
  output reg_write, operand_b, operand_a, Load, jalr_out, Store, Branch,
         mem_en, next_sel;
  wire   r_type, i_type, load, branch, store, jal, jalr, lui, auipc, net24263;

  type_decoder u_typedec0 ( .opcode(opcode), .r_type(r_type), .i_type(i_type), 
        .load(load), .store(store), .branch(branch), .jal(jal), .jalr(jalr), 
        .lui(lui), .auipc(auipc), .valid(valid), .load_signal_controller(
        load_control) );
  control_decoder u_controldec0 ( .fun3(fun3), .fun7(fun7), .i_type(i_type), 
        .r_type(r_type), .load(load), .store(store), .branch(branch), .jal(jal), .jalr(jalr), .lui(lui), .auipc(auipc), .load_control(net24263), .Load(Load), 
        .Store(Store), .jalr_out(jalr_out), .operand_b(operand_b), .operand_a(
        operand_a), .imm_sel(imm_sel), .Branch(Branch), .next_sel(next_sel), 
        .alu_control(alu_control) );
endmodule


module immediategen ( instr, i_imme, s_imme, sb_imme, uj_imme, u_imme );
  input [31:0] instr;
  output [31:0] i_imme;
  output [31:0] s_imme;
  output [31:0] sb_imme;
  output [31:0] uj_imme;
  output [31:0] u_imme;
  wire   uj_imme_31;
  assign uj_imme_31 = instr[31];

  SAEDRVT14_BUF_S_0P5 U2 ( .A(instr[7]), .X(s_imme[0]) );
  SAEDRVT14_BUF_S_0P5 U3 ( .A(instr[21]), .X(i_imme[1]) );
  SAEDRVT14_BUF_S_0P5 U4 ( .A(instr[20]), .X(i_imme[0]) );
  SAEDRVT14_BUF_S_0P5 U5 ( .A(instr[19]), .X(uj_imme[19]) );
  SAEDRVT14_BUF_S_0P5 U6 ( .A(instr[18]), .X(uj_imme[18]) );
  SAEDRVT14_BUF_S_0P5 U7 ( .A(instr[17]), .X(uj_imme[17]) );
  SAEDRVT14_BUF_S_0P5 U8 ( .A(instr[16]), .X(uj_imme[16]) );
  SAEDRVT14_BUF_S_0P5 U9 ( .A(instr[15]), .X(uj_imme[15]) );
  SAEDRVT14_BUF_S_0P5 U10 ( .A(instr[14]), .X(uj_imme[14]) );
  SAEDRVT14_BUF_S_0P5 U11 ( .A(instr[13]), .X(uj_imme[13]) );
  SAEDRVT14_BUF_S_0P5 U12 ( .A(instr[12]), .X(uj_imme[12]) );
  SAEDRVT14_BUF_S_0P5 U13 ( .A(instr[11]), .X(sb_imme[4]) );
  SAEDRVT14_BUF_S_0P5 U14 ( .A(instr[10]), .X(sb_imme[3]) );
  SAEDRVT14_BUF_S_0P5 U15 ( .A(instr[9]), .X(sb_imme[2]) );
  SAEDRVT14_BUF_S_0P5 U16 ( .A(instr[8]), .X(sb_imme[1]) );
  SAEDRVT14_BUF_S_0P5 U17 ( .A(instr[22]), .X(i_imme[2]) );
  SAEDRVT14_BUF_S_0P5 U18 ( .A(instr[23]), .X(i_imme[3]) );
  SAEDRVT14_BUF_S_0P5 U19 ( .A(instr[24]), .X(i_imme[4]) );
  SAEDRVT14_BUF_S_0P5 U20 ( .A(instr[25]), .X(i_imme[5]) );
  SAEDRVT14_BUF_S_0P5 U21 ( .A(instr[26]), .X(i_imme[6]) );
  SAEDRVT14_BUF_S_0P5 U22 ( .A(instr[27]), .X(i_imme[7]) );
  SAEDRVT14_BUF_S_0P5 U23 ( .A(instr[28]), .X(i_imme[8]) );
  SAEDRVT14_BUF_S_0P5 U24 ( .A(instr[29]), .X(i_imme[9]) );
  SAEDRVT14_BUF_S_0P5 U25 ( .A(instr[30]), .X(i_imme[10]) );
  SAEDRVT14_BUF_S_0P5 U26 ( .A(uj_imme_31), .X(i_imme[11]) );
endmodule


module mux3_8 ( a, b, c, d, e, sel, out );
  input [31:0] a;
  input [31:0] b;
  input [31:0] c;
  input [31:0] d;
  input [31:0] e;
  input [2:0] sel;
  output [31:0] out;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45;

  SAEDRVT14_BUF_1 U2 ( .A(sel[2]), .X(n23) );
  SAEDRVT14_ND2_0P5 U3 ( .A1(a[11]), .A2(n33), .X(n34) );
  SAEDRVT14_ND2_CDC_1 U4 ( .A1(n19), .A2(n33), .X(n26) );
  SAEDRVT14_OAI21_0P5 U5 ( .A1(n30), .A2(n29), .B(a[11]), .X(n31) );
  SAEDRVT14_AO21_1 U6 ( .A1(n29), .A2(a[11]), .B(n22), .X(out[11]) );
  SAEDRVT14_INV_0P5 U7 ( .A(a[7]), .X(n42) );
  SAEDRVT14_NR2_1 U8 ( .A1(n23), .A2(n42), .X(out[7]) );
  SAEDRVT14_INV_0P5 U9 ( .A(a[5]), .X(n40) );
  SAEDRVT14_NR2_1 U10 ( .A1(n23), .A2(n40), .X(out[5]) );
  SAEDRVT14_INV_0P5 U11 ( .A(a[6]), .X(n41) );
  SAEDRVT14_NR2_1 U12 ( .A1(n23), .A2(n41), .X(out[6]) );
  SAEDRVT14_NR2_1 U13 ( .A1(sel[1]), .A2(sel[0]), .X(n19) );
  SAEDRVT14_ND2_MM_1 U14 ( .A1(n23), .A2(n19), .X(n15) );
  SAEDRVT14_INV_0P5 U15 ( .A(a[11]), .X(n16) );
  SAEDRVT14_AOI21_0P5 U16 ( .A1(n23), .A2(n15), .B(n16), .X(out[31]) );
  SAEDRVT14_INV_0P5 U17 ( .A(sel[1]), .X(n17) );
  SAEDRVT14_OR3_0P5 U18 ( .A1(sel[0]), .A2(n23), .A3(n17), .X(n28) );
  SAEDRVT14_NR2_1 U19 ( .A1(sel[1]), .A2(n23), .X(n29) );
  SAEDRVT14_ND2_CDC_1 U20 ( .A1(sel[0]), .A2(n29), .X(n25) );
  SAEDRVT14_ND2_CDC_1 U21 ( .A1(n28), .A2(n25), .X(n20) );
  SAEDRVT14_NR2_1 U22 ( .A1(n23), .A2(n17), .X(n18) );
  SAEDRVT14_ND2_CDC_1 U23 ( .A1(sel[0]), .A2(n18), .X(n27) );
  SAEDRVT14_INV_0P5 U24 ( .A(n23), .X(n33) );
  SAEDRVT14_ND2_CDC_1 U25 ( .A1(n27), .A2(n26), .X(n21) );
  SAEDRVT14_AO22_0P75 U26 ( .A1(c[2]), .A2(n20), .B1(a[2]), .B2(n21), .X(
        out[2]) );
  SAEDRVT14_AO22_0P75 U27 ( .A1(c[4]), .A2(n20), .B1(a[4]), .B2(n21), .X(
        out[4]) );
  SAEDRVT14_AO22_0P75 U28 ( .A1(c[3]), .A2(n20), .B1(a[3]), .B2(n21), .X(
        out[3]) );
  SAEDRVT14_AO22_0P75 U29 ( .A1(a[1]), .A2(n21), .B1(c[1]), .B2(n20), .X(
        out[1]) );
  SAEDRVT14_INV_0P5 U30 ( .A(a[8]), .X(n43) );
  SAEDRVT14_NR2_1 U31 ( .A1(n23), .A2(n43), .X(out[8]) );
  SAEDRVT14_INV_0P5 U32 ( .A(a[9]), .X(n44) );
  SAEDRVT14_NR2_1 U33 ( .A1(n23), .A2(n44), .X(out[9]) );
  SAEDRVT14_INV_0P5 U34 ( .A(a[0]), .X(n35) );
  SAEDRVT14_INV_0P5 U35 ( .A(b[0]), .X(n24) );
  SAEDRVT14_OAI22_0P5 U36 ( .A1(n27), .A2(n35), .B1(n28), .B2(n24), .X(n22) );
  SAEDRVT14_INV_0P5 U37 ( .A(a[10]), .X(n45) );
  SAEDRVT14_NR2_1 U38 ( .A1(n23), .A2(n45), .X(out[10]) );
  SAEDRVT14_OAI22_0P5 U39 ( .A1(n26), .A2(n35), .B1(n25), .B2(n24), .X(out[0])
         );
  SAEDRVT14_ND2_CDC_1 U40 ( .A1(n27), .A2(n15), .X(n32) );
  SAEDRVT14_INV_0P5 U41 ( .A(n28), .X(n30) );
  SAEDRVT14_AO21B_0P5 U42 ( .A1(d[12]), .A2(n32), .B(n31), .X(out[12]) );
  SAEDRVT14_AO21B_0P5 U43 ( .A1(d[13]), .A2(n32), .B(n31), .X(out[13]) );
  SAEDRVT14_AO21B_0P5 U44 ( .A1(d[14]), .A2(n32), .B(n31), .X(out[14]) );
  SAEDRVT14_AO21B_0P5 U45 ( .A1(d[15]), .A2(n32), .B(n31), .X(out[15]) );
  SAEDRVT14_AO21B_0P5 U46 ( .A1(d[16]), .A2(n32), .B(n31), .X(out[16]) );
  SAEDRVT14_AO21B_0P5 U47 ( .A1(d[17]), .A2(n32), .B(n31), .X(out[17]) );
  SAEDRVT14_AO21B_0P5 U48 ( .A1(d[18]), .A2(n32), .B(n31), .X(out[18]) );
  SAEDRVT14_AO21B_0P5 U49 ( .A1(d[19]), .A2(n32), .B(n31), .X(out[19]) );
  SAEDRVT14_OAI21_0P5 U50 ( .A1(n15), .A2(n35), .B(n34), .X(out[20]) );
  SAEDRVT14_INV_0P5 U51 ( .A(a[1]), .X(n36) );
  SAEDRVT14_OAI21_0P5 U52 ( .A1(n15), .A2(n36), .B(n34), .X(out[21]) );
  SAEDRVT14_INV_0P5 U53 ( .A(a[2]), .X(n37) );
  SAEDRVT14_OAI21_0P5 U54 ( .A1(n15), .A2(n37), .B(n34), .X(out[22]) );
  SAEDRVT14_INV_0P5 U55 ( .A(a[3]), .X(n38) );
  SAEDRVT14_OAI21_0P5 U56 ( .A1(n15), .A2(n38), .B(n34), .X(out[23]) );
  SAEDRVT14_INV_0P5 U57 ( .A(a[4]), .X(n39) );
  SAEDRVT14_OAI21_0P5 U58 ( .A1(n15), .A2(n39), .B(n34), .X(out[24]) );
  SAEDRVT14_OAI21_0P5 U59 ( .A1(n15), .A2(n40), .B(n34), .X(out[25]) );
  SAEDRVT14_OAI21_0P5 U60 ( .A1(n15), .A2(n41), .B(n34), .X(out[26]) );
  SAEDRVT14_OAI21_0P5 U61 ( .A1(n15), .A2(n42), .B(n34), .X(out[27]) );
  SAEDRVT14_OAI21_0P5 U62 ( .A1(n15), .A2(n43), .B(n34), .X(out[28]) );
  SAEDRVT14_OAI21_0P5 U63 ( .A1(n15), .A2(n44), .B(n34), .X(out[29]) );
  SAEDRVT14_OAI21_0P5 U64 ( .A1(n15), .A2(n45), .B(n34), .X(out[30]) );
endmodule


module mux_1 ( a, b, sel, out );
  input [31:0] a;
  input [31:0] b;
  output [31:0] out;
  input sel;
  wire   n1, n2;

  SAEDRVT14_BUF_1 U1 ( .A(sel), .X(n2) );
  SAEDRVT14_BUF_1 U2 ( .A(sel), .X(n1) );
  SAEDRVT14_AN2_MM_0P5 U3 ( .A1(sel), .A2(b[18]), .X(out[18]) );
  SAEDRVT14_AN2_MM_0P5 U4 ( .A1(sel), .A2(b[20]), .X(out[20]) );
  SAEDRVT14_AN2_MM_0P5 U5 ( .A1(sel), .A2(b[17]), .X(out[17]) );
  SAEDRVT14_AN2_MM_0P5 U6 ( .A1(sel), .A2(b[19]), .X(out[19]) );
  SAEDRVT14_AN2_MM_0P5 U7 ( .A1(sel), .A2(b[16]), .X(out[16]) );
  SAEDRVT14_AN2_MM_0P5 U8 ( .A1(sel), .A2(b[29]), .X(out[29]) );
  SAEDRVT14_AN2_MM_0P5 U9 ( .A1(n2), .A2(b[31]), .X(out[31]) );
  SAEDRVT14_AN2_MM_0P5 U10 ( .A1(n1), .A2(b[6]), .X(out[6]) );
  SAEDRVT14_AN2_MM_0P5 U11 ( .A1(n1), .A2(b[7]), .X(out[7]) );
  SAEDRVT14_AN2_MM_0P5 U12 ( .A1(n1), .A2(b[3]), .X(out[3]) );
  SAEDRVT14_AN2_MM_0P5 U13 ( .A1(n1), .A2(b[1]), .X(out[1]) );
  SAEDRVT14_AN2_MM_0P5 U14 ( .A1(n1), .A2(b[23]), .X(out[23]) );
  SAEDRVT14_AN2_MM_0P5 U15 ( .A1(n2), .A2(b[8]), .X(out[8]) );
  SAEDRVT14_AN2_MM_0P5 U16 ( .A1(n1), .A2(b[24]), .X(out[24]) );
  SAEDRVT14_AN2_MM_0P5 U17 ( .A1(n2), .A2(b[25]), .X(out[25]) );
  SAEDRVT14_AN2_MM_0P5 U18 ( .A1(n2), .A2(b[28]), .X(out[28]) );
  SAEDRVT14_AN2_MM_0P5 U19 ( .A1(n1), .A2(b[2]), .X(out[2]) );
  SAEDRVT14_AN2_MM_0P5 U20 ( .A1(n1), .A2(b[27]), .X(out[27]) );
  SAEDRVT14_AN2_MM_0P5 U21 ( .A1(n2), .A2(b[12]), .X(out[12]) );
  SAEDRVT14_AN2_MM_0P5 U22 ( .A1(n1), .A2(b[21]), .X(out[21]) );
  SAEDRVT14_AN2_MM_0P5 U23 ( .A1(n2), .A2(b[10]), .X(out[10]) );
  SAEDRVT14_AN2_MM_0P5 U24 ( .A1(n1), .A2(b[30]), .X(out[30]) );
  SAEDRVT14_AN2_MM_0P5 U25 ( .A1(n2), .A2(b[15]), .X(out[15]) );
  SAEDRVT14_AN2_MM_0P5 U26 ( .A1(n1), .A2(b[0]), .X(out[0]) );
  SAEDRVT14_AN2_MM_0P5 U27 ( .A1(n2), .A2(b[11]), .X(out[11]) );
  SAEDRVT14_AN2_MM_0P5 U28 ( .A1(n1), .A2(b[4]), .X(out[4]) );
  SAEDRVT14_AN2_MM_0P5 U29 ( .A1(n2), .A2(b[13]), .X(out[13]) );
  SAEDRVT14_AN2_MM_0P5 U30 ( .A1(n1), .A2(b[5]), .X(out[5]) );
  SAEDRVT14_AN2_MM_0P5 U31 ( .A1(n2), .A2(b[22]), .X(out[22]) );
  SAEDRVT14_AN2_MM_0P5 U32 ( .A1(n2), .A2(b[9]), .X(out[9]) );
  SAEDRVT14_AN2_MM_0P5 U33 ( .A1(n2), .A2(b[14]), .X(out[14]) );
  SAEDRVT14_AN2_MM_0P5 U34 ( .A1(n2), .A2(b[26]), .X(out[26]) );
endmodule


module branch ( op_a, op_b, fun3, en, result );
  input [31:0] op_a;
  input [31:0] op_b;
  input [2:0] fun3;
  input en;
  output result;
  wire   n1, n2;

  SAEDRVT14_INV_0P5 U2 ( .A(fun3[0]), .X(n2) );
  SAEDRVT14_NR2_1 U3 ( .A1(fun3[1]), .A2(fun3[2]), .X(n1) );
  SAEDRVT14_OA221_U_0P5 U4 ( .A1(fun3[2]), .A2(n2), .B1(n1), .B2(fun3[0]), .C(
        en), .X(result) );
endmodule


module mux_0 ( a, b, sel, out );
  input [31:0] a;
  input [31:0] b;
  output [31:0] out;
  input sel;
  wire   n1, n2;

  SAEDRVT14_BUF_S_0P75 U1 ( .A(sel), .X(n2) );
  SAEDRVT14_AN2_MM_0P5 U2 ( .A1(n2), .A2(b[19]), .X(out[19]) );
  SAEDRVT14_BUF_S_0P75 U3 ( .A(sel), .X(n1) );
  SAEDRVT14_AN2_MM_0P5 U4 ( .A1(n1), .A2(b[15]), .X(out[15]) );
  SAEDRVT14_AN2_MM_0P5 U5 ( .A1(n2), .A2(b[18]), .X(out[18]) );
  SAEDRVT14_AN2_MM_0P5 U6 ( .A1(n1), .A2(b[13]), .X(out[13]) );
  SAEDRVT14_AN2_MM_0P5 U7 ( .A1(n1), .A2(b[12]), .X(out[12]) );
  SAEDRVT14_AN2_MM_0P5 U8 ( .A1(n2), .A2(b[16]), .X(out[16]) );
  SAEDRVT14_AN2_MM_0P5 U9 ( .A1(n2), .A2(b[17]), .X(out[17]) );
  SAEDRVT14_AN2_MM_0P5 U10 ( .A1(n1), .A2(b[14]), .X(out[14]) );
  SAEDRVT14_AN2_MM_0P5 U11 ( .A1(sel), .A2(b[31]), .X(out[31]) );
  SAEDRVT14_AN2_MM_0P5 U12 ( .A1(n1), .A2(b[30]), .X(out[30]) );
  SAEDRVT14_AN2_MM_0P5 U13 ( .A1(n2), .A2(b[29]), .X(out[29]) );
  SAEDRVT14_AN2_MM_0P5 U14 ( .A1(n1), .A2(b[28]), .X(out[28]) );
  SAEDRVT14_AN2_MM_0P5 U15 ( .A1(sel), .A2(b[27]), .X(out[27]) );
  SAEDRVT14_AN2_MM_0P5 U16 ( .A1(n2), .A2(b[26]), .X(out[26]) );
  SAEDRVT14_AN2_MM_0P5 U17 ( .A1(n1), .A2(b[25]), .X(out[25]) );
  SAEDRVT14_AN2_MM_0P5 U18 ( .A1(sel), .A2(b[24]), .X(out[24]) );
  SAEDRVT14_AN2_MM_0P5 U19 ( .A1(n2), .A2(b[23]), .X(out[23]) );
  SAEDRVT14_AN2_MM_0P5 U20 ( .A1(n2), .A2(b[22]), .X(out[22]) );
  SAEDRVT14_AN2_MM_0P5 U21 ( .A1(n2), .A2(b[21]), .X(out[21]) );
  SAEDRVT14_AN2_MM_0P5 U22 ( .A1(n2), .A2(b[20]), .X(out[20]) );
  SAEDRVT14_AN2_MM_0P5 U23 ( .A1(n1), .A2(b[11]), .X(out[11]) );
  SAEDRVT14_AN2_MM_0P5 U24 ( .A1(n1), .A2(b[10]), .X(out[10]) );
  SAEDRVT14_AN2_MM_0P5 U25 ( .A1(n1), .A2(b[9]), .X(out[9]) );
  SAEDRVT14_AN2_MM_0P5 U26 ( .A1(n1), .A2(b[8]), .X(out[8]) );
  SAEDRVT14_AN2_MM_0P5 U27 ( .A1(sel), .A2(b[7]), .X(out[7]) );
  SAEDRVT14_AN2_MM_0P5 U28 ( .A1(sel), .A2(b[6]), .X(out[6]) );
  SAEDRVT14_AN2_MM_0P5 U29 ( .A1(sel), .A2(b[5]), .X(out[5]) );
  SAEDRVT14_AN2_MM_0P5 U30 ( .A1(sel), .A2(b[4]), .X(out[4]) );
  SAEDRVT14_AN2_MM_0P5 U31 ( .A1(sel), .A2(b[3]), .X(out[3]) );
  SAEDRVT14_AN2_MM_0P5 U32 ( .A1(sel), .A2(b[2]), .X(out[2]) );
  SAEDRVT14_AN2_MM_0P5 U33 ( .A1(sel), .A2(b[1]), .X(out[1]) );
  SAEDRVT14_AN2_MM_0P5 U34 ( .A1(n2), .A2(b[0]), .X(out[0]) );
endmodule


module decode ( clk, rst, valid, reg_write_en_in, load_control_signal, 
        instruction, pc_address, rd_wb_data, instruction_rd, load, store, jalr, 
        next_sel, branch_result, reg_write_en_out, alu_control, mem_to_reg, 
        rs1, rs2, opb_data, opa_mux_out, opb_mux_out );
  input [31:0] instruction;
  input [31:0] pc_address;
  input [31:0] rd_wb_data;
  input [31:0] instruction_rd;
  output [3:0] alu_control;
  output [1:0] mem_to_reg;
  output [4:0] rs1;
  output [4:0] rs2;
  output [31:0] opb_data;
  output [31:0] opa_mux_out;
  output [31:0] opb_mux_out;
  input clk, rst, valid, reg_write_en_in, load_control_signal;
  output load, store, jalr, next_sel, branch_result, reg_write_en_out;
  wire   operand_b, operand_a, branch, \s_immo[0] , net24330, net24331,
         net24332, net24333, net24334, net24335, net24336, net24337, net24338,
         net24339, net24340, net24341, net24342, net24343, net24344, net24345,
         net24346, net24347, net24348, net24349, net24350, net24351, net24352,
         net24353, net24354, net24355, net24356, net24357, net24358, net24359,
         net24360, net24361, net24362, net24363, net24364, net24365, net24366,
         net24367, net24368, net24369, net24370, net24371, net24372, net24373,
         net24374, net24375, net24376, net24377, net24378, net24379, net24380,
         net24381, net24382, net24383, net24384, net24385, net24386, net24387,
         net24388, net24389, net24390, net24391, net24392, net24393, net24394,
         net24395, net24396, net24397, net24398, net24399, net24400, net24401,
         net24402, net24403, net24404, net24405, net24406, net24407, net24408,
         net24409, net24410, net24411, net24412, net24413, net24414, net24415,
         net24416, net24417, net24418, net24419, net24420, net24421, net24422,
         net24423, net24424, net24425, net24426, net24427, net24428, net24429,
         net24430, net24431, net24432, net24433, net24434, net24435, net24436,
         net24437, net24438, net24439, net24440, net24441, net24442, net24443,
         net24444, net24445, net24446, net24447, net24448, net24449, net24450,
         net24451, net24452, net24453, net24454, net24455, net24456, net24457,
         net24458, net24459, net24460, net24461, net24462, net24463, net24464,
         net24465, net24466, net24467, net24468, net24469, net24470, net24471,
         net24472, net24473, net24474, net24475, net24476, net24477, net24478,
         net24479, net24480, net24481, net24482, net24483, net24484, net24485,
         net24486, net24487, net24488, net24489, net24490, net24491, net24492,
         net24493, net24494, net24495, net24496, net24497, net24498, net24499,
         net24500, net24501, net24502, net24503, net24504, net24505, net24506,
         net24507, net24508, net24509, net24510, net24511, net24512, net24513,
         net24514, net24515, net24516, net24517, net24518, net24519, net24520,
         net24521, net24522, net24523, net24524, net24525, net24526, net24527,
         net24528, net24529, net24530, net24531, net24532, net24533, net24534,
         net24535, net24536, net24537, net24538, net24539, net24540, net24541,
         net24542, net24543, net24544, net24545, net24546, net24547, net24548,
         net24549, net24550, net24551, net24552, net24553, net24554, net24555,
         net24556, net24557, net24558, net24559, net24560, net24561, net24562,
         net24563, net24564, net24565, net24566, net24567, net24568, net24569,
         net24570, net24571, net24572, net24573, net24574, net24575, net24576,
         net24577, net24578, net24579, net24580, net24581, net24582, net24583,
         net24584, net24585, net24586, net24587, net24588, net24589, net24590,
         net24591, net24592, net24593, net24594, net24595, net24596, net24597,
         net24598, net24599;
  wire   [2:0] imm_sel;
  wire   [31:0] i_immo;
  wire   [31:0] sb_immo;
  wire   [31:0] uj_immo;
  wire   [31:0] imm_mux_out;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102;

  controlunit u_cu0 ( .opcode(instruction[6:0]), .fun3(instruction[14:12]), 
        .fun7(instruction[30]), .valid(valid), .load_control(
        load_control_signal), .imm_sel(imm_sel), .operand_b(operand_b), 
        .operand_a(operand_a), .Load(load), .jalr_out(jalr), .Store(store), 
        .Branch(branch), .next_sel(next_sel), .alu_control(alu_control) );
  immediategen u_imm_gen0 ( .instr({instruction[31:7], net24593, net24594, 
        net24595, net24596, net24597, net24598, net24599}), .i_imme({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, i_immo[11:0]}), 
        .s_imme({SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, \s_immo[0] }), .sb_imme({
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, sb_immo[4:1], SYNOPSYS_UNCONNECTED__78}), 
        .uj_imme({SYNOPSYS_UNCONNECTED__79, SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, uj_immo[19:12], 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95, SYNOPSYS_UNCONNECTED__96, 
        SYNOPSYS_UNCONNECTED__97, SYNOPSYS_UNCONNECTED__98, 
        SYNOPSYS_UNCONNECTED__99, SYNOPSYS_UNCONNECTED__100, 
        SYNOPSYS_UNCONNECTED__101, SYNOPSYS_UNCONNECTED__102}) );
  mux3_8 u_mux0 ( .a({net24458, net24459, net24460, net24461, net24462, 
        net24463, net24464, net24465, net24466, net24467, net24468, net24469, 
        net24470, net24471, net24472, net24473, net24474, net24475, net24476, 
        net24477, i_immo[11:0]}), .b({net24478, net24479, net24480, net24481, 
        net24482, net24483, net24484, net24485, net24486, net24487, net24488, 
        net24489, net24490, net24491, net24492, net24493, net24494, net24495, 
        net24496, net24497, net24498, net24499, net24500, net24501, net24502, 
        net24503, net24504, net24505, net24506, net24507, net24508, 
        \s_immo[0] }), .c({net24509, net24510, net24511, net24512, net24513, 
        net24514, net24515, net24516, net24517, net24518, net24519, net24520, 
        net24521, net24522, net24523, net24524, net24525, net24526, net24527, 
        net24528, net24529, net24530, net24531, net24532, net24533, net24534, 
        net24535, sb_immo[4:1], net24536}), .d({net24537, net24538, net24539, 
        net24540, net24541, net24542, net24543, net24544, net24545, net24546, 
        net24547, net24548, uj_immo[19:12], net24549, net24550, net24551, 
        net24552, net24553, net24554, net24555, net24556, net24557, net24558, 
        net24559, net24560}), .e({net24561, net24562, net24563, net24564, 
        net24565, net24566, net24567, net24568, net24569, net24570, net24571, 
        net24572, net24573, net24574, net24575, net24576, net24577, net24578, 
        net24579, net24580, net24581, net24582, net24583, net24584, net24585, 
        net24586, net24587, net24588, net24589, net24590, net24591, net24592}), 
        .sel(imm_sel), .out(imm_mux_out) );
  mux_1 u_mux1 ( .a({net24426, net24427, net24428, net24429, net24430, 
        net24431, net24432, net24433, net24434, net24435, net24436, net24437, 
        net24438, net24439, net24440, net24441, net24442, net24443, net24444, 
        net24445, net24446, net24447, net24448, net24449, net24450, net24451, 
        net24452, net24453, net24454, net24455, net24456, net24457}), .b(
        pc_address), .sel(operand_a), .out(opa_mux_out) );
  mux_0 u_mux2 ( .a({net24394, net24395, net24396, net24397, net24398, 
        net24399, net24400, net24401, net24402, net24403, net24404, net24405, 
        net24406, net24407, net24408, net24409, net24410, net24411, net24412, 
        net24413, net24414, net24415, net24416, net24417, net24418, net24419, 
        net24420, net24421, net24422, net24423, net24424, net24425}), .b(
        imm_mux_out), .sel(operand_b), .out(opb_mux_out) );
  branch u_branch0 ( .op_a({net24330, net24331, net24332, net24333, net24334, 
        net24335, net24336, net24337, net24338, net24339, net24340, net24341, 
        net24342, net24343, net24344, net24345, net24346, net24347, net24348, 
        net24349, net24350, net24351, net24352, net24353, net24354, net24355, 
        net24356, net24357, net24358, net24359, net24360, net24361}), .op_b({
        net24362, net24363, net24364, net24365, net24366, net24367, net24368, 
        net24369, net24370, net24371, net24372, net24373, net24374, net24375, 
        net24376, net24377, net24378, net24379, net24380, net24381, net24382, 
        net24383, net24384, net24385, net24386, net24387, net24388, net24389, 
        net24390, net24391, net24392, net24393}), .fun3(instruction[14:12]), 
        .en(branch), .result(branch_result) );
  SAEDRVT14_BUF_S_0P5 U2 ( .A(instruction[24]), .X(rs2[4]) );
  SAEDRVT14_BUF_S_0P5 U3 ( .A(instruction[21]), .X(rs2[1]) );
  SAEDRVT14_BUF_S_0P5 U4 ( .A(instruction[20]), .X(rs2[0]) );
  SAEDRVT14_BUF_S_0P5 U5 ( .A(instruction[19]), .X(rs1[4]) );
  SAEDRVT14_BUF_S_0P5 U6 ( .A(instruction[18]), .X(rs1[3]) );
  SAEDRVT14_BUF_S_0P5 U7 ( .A(instruction[17]), .X(rs1[2]) );
  SAEDRVT14_BUF_S_0P5 U8 ( .A(instruction[16]), .X(rs1[1]) );
  SAEDRVT14_BUF_S_0P5 U9 ( .A(instruction[15]), .X(rs1[0]) );
  SAEDRVT14_BUF_S_0P5 U10 ( .A(instruction[22]), .X(rs2[2]) );
  SAEDRVT14_BUF_S_0P5 U11 ( .A(instruction[23]), .X(rs2[3]) );
endmodule


module decode_pipe ( clk, rst, load_in, store_in, jalr_in, next_sel_in, 
        branch_result_in, reg_write_in, rs1_in, rs2_in, alu_control_in, 
        mem_to_reg_in, opa_mux_in, opb_mux_in, opb_data_in, pre_address_in, 
        instruction_in, load, store, jalr_out, next_sel, branch_result, 
        reg_write_out, rs1_out, rs2_out, alu_control, mem_to_reg, opa_mux_out, 
        opb_mux_out, opb_data_out, pre_address_out, instruction_out );
  input [4:0] rs1_in;
  input [4:0] rs2_in;
  input [3:0] alu_control_in;
  input [1:0] mem_to_reg_in;
  input [31:0] opa_mux_in;
  input [31:0] opb_mux_in;
  input [31:0] opb_data_in;
  input [31:0] pre_address_in;
  input [31:0] instruction_in;
  output [4:0] rs1_out;
  output [4:0] rs2_out;
  output [3:0] alu_control;
  output [1:0] mem_to_reg;
  output [31:0] opa_mux_out;
  output [31:0] opb_mux_out;
  output [31:0] opb_data_out;
  output [31:0] pre_address_out;
  output [31:0] instruction_out;
  input clk, rst, load_in, store_in, jalr_in, next_sel_in, branch_result_in,
         reg_write_in;
  output load, store, jalr_out, next_sel, branch_result, reg_write_out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  SAEDRVT14_FDPRBQ_V2_0P5 \rs1_reg[4]  ( .D(rs1_in[4]), .CK(clk), .RD(n3), .Q(
        rs1_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs1_reg[3]  ( .D(rs1_in[3]), .CK(clk), .RD(n3), .Q(
        rs1_out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs1_reg[2]  ( .D(rs1_in[2]), .CK(clk), .RD(n3), .Q(
        rs1_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs1_reg[1]  ( .D(rs1_in[1]), .CK(clk), .RD(n3), .Q(
        rs1_out[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs1_reg[0]  ( .D(rs1_in[0]), .CK(clk), .RD(n3), .Q(
        rs1_out[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs2_reg[4]  ( .D(rs2_in[4]), .CK(clk), .RD(n3), .Q(
        rs2_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs2_reg[2]  ( .D(rs2_in[2]), .CK(clk), .RD(n3), .Q(
        rs2_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs2_reg[1]  ( .D(rs2_in[1]), .CK(clk), .RD(n5), .Q(
        rs2_out[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \rs2_reg[0]  ( .D(rs2_in[0]), .CK(clk), .RD(n5), .Q(
        rs2_out[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 l_reg ( .D(load_in), .CK(clk), .RD(n5), .Q(load) );
  SAEDRVT14_FDPRBQ_V2_0P5 s_reg ( .D(store_in), .CK(clk), .RD(n5), .Q(store)
         );
  SAEDRVT14_FDPRBQ_V2_0P5 jalr_reg ( .D(jalr_in), .CK(clk), .RD(n5), .Q(
        jalr_out) );
  SAEDRVT14_FDPRBQ_V2_0P5 nextsel_reg ( .D(next_sel_in), .CK(clk), .RD(n5), 
        .Q(next_sel) );
  SAEDRVT14_FDPRBQ_V2_0P5 branch_res_reg ( .D(branch_result_in), .CK(clk), 
        .RD(n5), .Q(branch_result) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_con_reg[3]  ( .D(alu_control_in[3]), .CK(clk), 
        .RD(n5), .Q(alu_control[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_con_reg[2]  ( .D(alu_control_in[2]), .CK(clk), 
        .RD(n6), .Q(alu_control[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_con_reg[1]  ( .D(alu_control_in[1]), .CK(clk), 
        .RD(n6), .Q(alu_control[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_con_reg[0]  ( .D(alu_control_in[0]), .CK(clk), 
        .RD(n6), .Q(alu_control[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[31]  ( .D(opa_mux_in[31]), .CK(clk), 
        .RD(n6), .Q(opa_mux_out[31]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[30]  ( .D(opa_mux_in[30]), .CK(clk), 
        .RD(n6), .Q(opa_mux_out[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[28]  ( .D(opa_mux_in[28]), .CK(clk), 
        .RD(n6), .Q(opa_mux_out[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[27]  ( .D(opa_mux_in[27]), .CK(clk), 
        .RD(n6), .Q(opa_mux_out[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[26]  ( .D(opa_mux_in[26]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[25]  ( .D(opa_mux_in[25]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[24]  ( .D(opa_mux_in[24]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[23]  ( .D(opa_mux_in[23]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[23]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[22]  ( .D(opa_mux_in[22]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[21]  ( .D(opa_mux_in[21]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[21]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[20]  ( .D(opa_mux_in[20]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[20]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[19]  ( .D(opa_mux_in[19]), .CK(clk), 
        .RD(n7), .Q(opa_mux_out[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[18]  ( .D(opa_mux_in[18]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[17]  ( .D(opa_mux_in[17]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[16]  ( .D(opa_mux_in[16]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[16]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[15]  ( .D(opa_mux_in[15]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[13]  ( .D(opa_mux_in[13]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[12]  ( .D(opa_mux_in[12]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[11]  ( .D(opa_mux_in[11]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[10]  ( .D(opa_mux_in[10]), .CK(clk), 
        .RD(n1), .Q(opa_mux_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[9]  ( .D(opa_mux_in[9]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[8]  ( .D(opa_mux_in[8]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[7]  ( .D(opa_mux_in[7]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[6]  ( .D(opa_mux_in[6]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[6]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[5]  ( .D(opa_mux_in[5]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[4]  ( .D(opa_mux_in[4]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[3]  ( .D(opa_mux_in[3]), .CK(clk), .RD(
        n1), .Q(opa_mux_out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[2]  ( .D(opa_mux_in[2]), .CK(clk), .RD(
        n2), .Q(opa_mux_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[1]  ( .D(opa_mux_in[1]), .CK(clk), .RD(
        n2), .Q(opa_mux_out[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opa_mux_reg[0]  ( .D(opa_mux_in[0]), .CK(clk), .RD(
        n2), .Q(opa_mux_out[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[30]  ( .D(opb_mux_in[30]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[29]  ( .D(opb_mux_in[29]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[29]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[28]  ( .D(opb_mux_in[28]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[27]  ( .D(opb_mux_in[27]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[26]  ( .D(opb_mux_in[26]), .CK(clk), 
        .RD(n4), .Q(opb_mux_out[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[25]  ( .D(opb_mux_in[25]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[24]  ( .D(opb_mux_in[24]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[23]  ( .D(opb_mux_in[23]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[23]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[22]  ( .D(opb_mux_in[22]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[21]  ( .D(opb_mux_in[21]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[21]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[20]  ( .D(opb_mux_in[20]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[20]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[19]  ( .D(opb_mux_in[19]), .CK(clk), 
        .RD(n1), .Q(opb_mux_out[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[18]  ( .D(opb_mux_in[18]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[17]  ( .D(opb_mux_in[17]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[15]  ( .D(opb_mux_in[15]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[14]  ( .D(opb_mux_in[14]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[13]  ( .D(opb_mux_in[13]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[12]  ( .D(opb_mux_in[12]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[11]  ( .D(opb_mux_in[11]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[10]  ( .D(opb_mux_in[10]), .CK(clk), 
        .RD(n4), .Q(opb_mux_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[9]  ( .D(opb_mux_in[9]), .CK(clk), .RD(
        n1), .Q(opb_mux_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[8]  ( .D(opb_mux_in[8]), .CK(clk), .RD(
        n4), .Q(opb_mux_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[7]  ( .D(opb_mux_in[7]), .CK(clk), .RD(
        n1), .Q(opb_mux_out[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[6]  ( .D(opb_mux_in[6]), .CK(clk), .RD(
        n4), .Q(opb_mux_out[6]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[5]  ( .D(opb_mux_in[5]), .CK(clk), .RD(
        n1), .Q(opb_mux_out[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[4]  ( .D(opb_mux_in[4]), .CK(clk), .RD(
        n1), .Q(opb_mux_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[3]  ( .D(opb_mux_in[3]), .CK(clk), .RD(
        n1), .Q(opb_mux_out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[2]  ( .D(opb_mux_in[2]), .CK(clk), .RD(
        n3), .Q(opb_mux_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \opb_mux_reg[0]  ( .D(opb_mux_in[0]), .CK(clk), .RD(
        n3), .Q(opb_mux_out[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[14]  ( .D(instruction_in[14]), .CK(
        clk), .RD(n3), .Q(instruction_out[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[13]  ( .D(instruction_in[13]), .CK(
        clk), .RD(n3), .Q(instruction_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[12]  ( .D(instruction_in[12]), .CK(
        clk), .RD(n3), .Q(instruction_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[11]  ( .D(instruction_in[11]), .CK(
        clk), .RD(n3), .Q(instruction_out[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[10]  ( .D(instruction_in[10]), .CK(
        clk), .RD(n3), .Q(instruction_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[9]  ( .D(instruction_in[9]), .CK(
        clk), .RD(n1), .Q(instruction_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[8]  ( .D(instruction_in[8]), .CK(
        clk), .RD(n1), .Q(instruction_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[7]  ( .D(instruction_in[7]), .CK(
        clk), .RD(n1), .Q(instruction_out[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \rs2_reg[3]  ( .D(rs2_in[3]), .CK(clk), .RD(n3), 
        .Q(rs2_out[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \opa_mux_reg[29]  ( .D(opa_mux_in[29]), .CK(clk), 
        .RD(n6), .Q(opa_mux_out[29]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \opa_mux_reg[14]  ( .D(opa_mux_in[14]), .CK(clk), 
        .RD(n2), .Q(opa_mux_out[14]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \opb_mux_reg[31]  ( .D(opb_mux_in[31]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[31]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \opb_mux_reg[16]  ( .D(opb_mux_in[16]), .CK(clk), 
        .RD(n2), .Q(opb_mux_out[16]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \opb_mux_reg[1]  ( .D(opb_mux_in[1]), .CK(clk), 
        .RD(n3), .Q(opb_mux_out[1]) );
  SAEDRVT14_BUF_S_6 U3 ( .A(n4), .X(n1) );
  SAEDRVT14_BUF_3 U4 ( .A(n1), .X(n2) );
  SAEDRVT14_BUF_1P5 U5 ( .A(n1), .X(n3) );
  SAEDRVT14_BUF_S_0P5 U6 ( .A(rst), .X(n4) );
  SAEDRVT14_BUF_S_0P5 U7 ( .A(n1), .X(n5) );
  SAEDRVT14_BUF_S_0P5 U8 ( .A(n1), .X(n6) );
  SAEDRVT14_BUF_S_0P5 U9 ( .A(n1), .X(n7) );
endmodule


module alu ( a_i, b_i, op_i, res_o );
  input [31:0] a_i;
  input [31:0] b_i;
  input [3:0] op_i;
  output [31:0] res_o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037;

  SAEDRVT14_OAI21_V1_4 U294 ( .A1(n1037), .A2(n1036), .B(n1035), .X(res_o[31])
         );
  SAEDRVT14_OR4_1 U295 ( .A1(n167), .A2(n166), .A3(n165), .A4(n164), .X(
        res_o[30]) );
  SAEDRVT14_ND2_CDC_4 U296 ( .A1(n720), .A2(n64), .X(n879) );
  SAEDRVT14_OA2BB2_V1_1 U297 ( .A1(n944), .A2(n376), .B1(n734), .B2(n378), .X(
        n409) );
  SAEDRVT14_OA2BB2_V1_1 U298 ( .A1(n944), .A2(n735), .B1(n734), .B2(n737), .X(
        n750) );
  SAEDRVT14_OA2BB2_V1_1 U299 ( .A1(n944), .A2(n253), .B1(n734), .B2(n255), .X(
        n277) );
  SAEDRVT14_OA2BB2_V1_1 U300 ( .A1(n147), .A2(n944), .B1(n734), .B2(n145), .X(
        n140) );
  SAEDRVT14_OA2BB2_V1_1 U301 ( .A1(n944), .A2(n553), .B1(n734), .B2(n555), .X(
        n578) );
  SAEDRVT14_OA2BB2_V1_1 U302 ( .A1(n944), .A2(n416), .B1(n734), .B2(n418), .X(
        n434) );
  SAEDRVT14_OA2BB2_V1_1 U303 ( .A1(n944), .A2(n458), .B1(n734), .B2(n460), .X(
        n469) );
  SAEDRVT14_NR2_MM_1 U304 ( .A1(n12), .A2(n148), .X(n162) );
  SAEDRVT14_ND2_CDC_1 U305 ( .A1(n1028), .A2(n1031), .X(n1029) );
  SAEDRVT14_INV_S_1 U306 ( .A(n1014), .X(n7) );
  SAEDRVT14_INV_S_2 U307 ( .A(n71), .X(n944) );
  SAEDRVT14_INV_0P5 U308 ( .A(n1020), .X(n1024) );
  SAEDRVT14_BUF_1 U309 ( .A(n962), .X(n558) );
  SAEDRVT14_ND2_CDC_1 U310 ( .A1(n496), .A2(n1005), .X(n1004) );
  SAEDRVT14_INV_S_2 U311 ( .A(n9), .X(n734) );
  SAEDRVT14_NR2_MM_1 U312 ( .A1(n47), .A2(n964), .X(n574) );
  SAEDRVT14_ND2_CDC_4 U313 ( .A1(n498), .A2(n1002), .X(n352) );
  SAEDRVT14_ND2_CDC_1 U314 ( .A1(b_i[29]), .A2(n157), .X(n663) );
  SAEDRVT14_NR2_MM_1 U315 ( .A1(n869), .A2(n73), .X(n962) );
  SAEDRVT14_NR3_1 U316 ( .A1(op_i[2]), .A2(op_i[1]), .A3(n48), .X(n960) );
  SAEDRVT14_BUF_1 U317 ( .A(n391), .X(n387) );
  SAEDRVT14_INV_S_1 U318 ( .A(n45), .X(n683) );
  SAEDRVT14_OAI21_V1_4 U319 ( .A1(n986), .A2(n979), .B(n91), .X(n118) );
  SAEDRVT14_OAI21_2 U320 ( .A1(a_i[25]), .A2(n905), .B(b_i[25]), .X(n89) );
  SAEDRVT14_BUF_1 U321 ( .A(n1000), .X(n421) );
  SAEDRVT14_INV_4 U322 ( .A(n24), .X(n318) );
  SAEDRVT14_BUF_S_2 U323 ( .A(a_i[6]), .X(n332) );
  SAEDRVT14_INV_4 U324 ( .A(n327), .X(n341) );
  SAEDRVT14_BUF_4 U325 ( .A(b_i[4]), .X(n687) );
  SAEDRVT14_INV_S_2 U326 ( .A(n170), .X(n205) );
  SAEDRVT14_BUF_4 U327 ( .A(b_i[3]), .X(n496) );
  SAEDRVT14_INV_0P5 U328 ( .A(n683), .X(n1) );
  SAEDRVT14_INV_0P5 U329 ( .A(n1), .X(n2) );
  SAEDRVT14_INV_0P5 U330 ( .A(n1), .X(n3) );
  SAEDRVT14_INV_0P5 U331 ( .A(n1), .X(n4) );
  SAEDRVT14_INV_0P5 U332 ( .A(n1), .X(n5) );
  SAEDRVT14_OAI22_0P5 U333 ( .A1(n604), .A2(n316), .B1(b_i[6]), .B2(n596), .X(
        n378) );
  SAEDRVT14_AOI21_0P5 U334 ( .A1(n605), .A2(n255), .B(n613), .X(n284) );
  SAEDRVT14_AOI21_0P5 U335 ( .A1(n617), .A2(n460), .B(n625), .X(n535) );
  SAEDRVT14_OAI22_0P5 U336 ( .A1(n632), .A2(n712), .B1(b_i[16]), .B2(n728), 
        .X(n737) );
  SAEDRVT14_INV_0P5 U337 ( .A(a_i[0]), .X(n394) );
  SAEDRVT14_OAI22_0P5 U338 ( .A1(n652), .A2(n891), .B1(b_i[24]), .B2(n892), 
        .X(n918) );
  SAEDRVT14_OAI22_0P5 U339 ( .A1(n979), .A2(n8), .B1(n1022), .B2(n978), .X(
        n983) );
  SAEDRVT14_ND2_CDC_2 U340 ( .A1(n498), .A2(n421), .X(n47) );
  SAEDRVT14_ND2_CDC_1 U341 ( .A1(n233), .A2(n1005), .X(n995) );
  SAEDRVT14_INV_0P5 U342 ( .A(b_i[6]), .X(n307) );
  SAEDRVT14_INV_0P5 U343 ( .A(a_i[15]), .X(n579) );
  SAEDRVT14_INV_0P5 U344 ( .A(a_i[25]), .X(n926) );
  SAEDRVT14_AOI21_0P5 U345 ( .A1(n682), .A2(n1034), .B(n58), .X(n935) );
  SAEDRVT14_OAI22_0P5 U346 ( .A1(n986), .A2(n985), .B1(b_i[27]), .B2(n984), 
        .X(n987) );
  SAEDRVT14_OAI22_1 U347 ( .A1(n1031), .A2(n1030), .B1(n1034), .B2(n1029), .X(
        n1032) );
  SAEDRVT14_AOI21_1P5 U348 ( .A1(n1034), .A2(n1028), .B(n1027), .X(n1030) );
  SAEDRVT14_OAI21_2 U349 ( .A1(n1034), .A2(n1026), .B(n1025), .X(n1027) );
  SAEDRVT14_OAI21_3 U350 ( .A1(a_i[29]), .A2(n147), .B(b_i[29]), .X(n146) );
  SAEDRVT14_OAI21_V1_8 U351 ( .A1(n873), .A2(n868), .B(n87), .X(n889) );
  SAEDRVT14_OAI21_V1_8 U352 ( .A1(n86), .A2(n85), .B(n84), .X(n851) );
  SAEDRVT14_OAI21_V1_4 U353 ( .A1(b_i[22]), .A2(n83), .B(a_i[22]), .X(n84) );
  SAEDRVT14_OAI21_3 U354 ( .A1(a_i[21]), .A2(n833), .B(b_i[21]), .X(n40) );
  SAEDRVT14_OAI21_V1_4 U355 ( .A1(b_i[20]), .A2(n816), .B(a_i[20]), .X(n39) );
  SAEDRVT14_INV_4 U356 ( .A(n791), .X(n795) );
  SAEDRVT14_OAI21_3 U357 ( .A1(b_i[16]), .A2(n711), .B(a_i[16]), .X(n35) );
  SAEDRVT14_OAI21_4 U358 ( .A1(a_i[5]), .A2(n327), .B(b_i[5]), .X(n23) );
  SAEDRVT14_INV_S_1 U359 ( .A(n574), .X(n6) );
  SAEDRVT14_INV_S_2 U360 ( .A(n1002), .X(n1000) );
  SAEDRVT14_ND2_6 U361 ( .A1(a_i[0]), .A2(b_i[0]), .X(n669) );
  SAEDRVT14_OA221_U_0P5 U362 ( .A1(b_i[31]), .A2(n1026), .B1(n1031), .B2(n1017), .C(n1016), .X(n1018) );
  SAEDRVT14_AOI221_0P5 U363 ( .A1(n1011), .A2(n163), .B1(a_i[30]), .B2(n162), 
        .C(b_i[30]), .X(n164) );
  SAEDRVT14_OAI21_2 U364 ( .A1(a_i[30]), .A2(n1013), .B(b_i[30]), .X(n1012) );
  SAEDRVT14_AOI21_0P5 U365 ( .A1(n9), .A2(n145), .B(n123), .X(n139) );
  SAEDRVT14_AO32_U_0P5 U366 ( .A1(a_i[26]), .A2(n947), .A3(n1017), .B1(n946), 
        .B2(n953), .X(n950) );
  SAEDRVT14_OAI21_2 U367 ( .A1(a_i[27]), .A2(n959), .B(b_i[27]), .X(n91) );
  SAEDRVT14_AOI22_1 U368 ( .A1(n9), .A2(n945), .B1(n944), .B2(n943), .X(n947)
         );
  SAEDRVT14_OAI21_V1_8 U369 ( .A1(n926), .A2(n919), .B(n89), .X(n943) );
  SAEDRVT14_OAI21_V1_4 U370 ( .A1(b_i[24]), .A2(n889), .B(a_i[24]), .X(n88) );
  SAEDRVT14_AOI22_1 U371 ( .A1(n9), .A2(n891), .B1(n890), .B2(n889), .X(n893)
         );
  SAEDRVT14_OAI22_0P5 U372 ( .A1(n891), .A2(n941), .B1(n1023), .B2(n889), .X(
        n888) );
  SAEDRVT14_OAI21_3 U373 ( .A1(a_i[15]), .A2(n553), .B(b_i[15]), .X(n34) );
  SAEDRVT14_OAI21_V1_4 U374 ( .A1(b_i[6]), .A2(n24), .B(n332), .X(n25) );
  SAEDRVT14_OAI22_0P5 U375 ( .A1(n108), .A2(n1036), .B1(n882), .B2(n6), .X(
        n116) );
  SAEDRVT14_NR2_1 U376 ( .A1(n1008), .A2(n1007), .X(n1037) );
  SAEDRVT14_OAI22_0P5 U377 ( .A1(n1006), .A2(n1005), .B1(n1004), .B2(n1003), 
        .X(n1007) );
  SAEDRVT14_OAI21_V1_4 U378 ( .A1(n1005), .A2(n368), .B(n22), .X(n327) );
  SAEDRVT14_ND2_1P5 U379 ( .A1(n703), .A2(n196), .X(n766) );
  SAEDRVT14_OAI22_0P5 U380 ( .A1(n998), .A2(n997), .B1(n996), .B2(n995), .X(
        n1008) );
  SAEDRVT14_OAI22_0P5 U381 ( .A1(n1002), .A2(n1001), .B1(n1000), .B2(n999), 
        .X(n1003) );
  SAEDRVT14_INV_S_2 U382 ( .A(n492), .X(n489) );
  SAEDRVT14_OAI21_V1_4 U383 ( .A1(n1000), .A2(n205), .B(n19), .X(n492) );
  SAEDRVT14_INV_S_1 U384 ( .A(n408), .X(n410) );
  SAEDRVT14_AO21_1 U385 ( .A1(n16), .A2(n669), .B(n526), .X(n18) );
  SAEDRVT14_INV_S_1 U386 ( .A(n332), .X(n596) );
  SAEDRVT14_INV_4 U387 ( .A(n687), .X(n1005) );
  SAEDRVT14_INV_S_8 U388 ( .A(a_i[1]), .X(n16) );
  SAEDRVT14_BUF_S_6 U389 ( .A(b_i[2]), .X(n1002) );
  SAEDRVT14_INV_0P5 U390 ( .A(b_i[29]), .X(n124) );
  SAEDRVT14_INV_4 U391 ( .A(a_i[3]), .X(n15) );
  SAEDRVT14_INV_0P75 U392 ( .A(n1014), .X(n12) );
  SAEDRVT14_ND2_CDC_4 U393 ( .A1(op_i[0]), .A2(n667), .X(n1014) );
  SAEDRVT14_INV_4 U394 ( .A(n890), .X(n8) );
  SAEDRVT14_AOI21_1P5 U395 ( .A1(n1034), .A2(n1033), .B(n1032), .X(n1035) );
  SAEDRVT14_AOI21_0P5 U396 ( .A1(n558), .A2(n149), .B(n585), .X(n167) );
  SAEDRVT14_AO32_1 U397 ( .A1(a_i[30]), .A2(n163), .A3(n1017), .B1(n1011), 
        .B2(n162), .X(n149) );
  SAEDRVT14_OR4_1 U398 ( .A1(n144), .A2(n143), .A3(n142), .A4(n141), .X(
        res_o[29]) );
  SAEDRVT14_OAI21_2 U399 ( .A1(n1020), .A2(n8), .B(n1014), .X(n1015) );
  SAEDRVT14_OR3_1 U400 ( .A1(n117), .A2(n116), .A3(n115), .X(res_o[28]) );
  SAEDRVT14_AOI21_0P5 U401 ( .A1(n558), .A2(n125), .B(n124), .X(n144) );
  SAEDRVT14_AO32_1 U402 ( .A1(a_i[29]), .A2(n140), .A3(n1017), .B1(n157), .B2(
        n139), .X(n125) );
  SAEDRVT14_AOI21_0P5 U403 ( .A1(b_i[28]), .A2(n112), .B(n111), .X(n114) );
  SAEDRVT14_OAI21_0P5 U404 ( .A1(n122), .A2(n734), .B(n92), .X(n110) );
  SAEDRVT14_OR4_1 U405 ( .A1(n990), .A2(n989), .A3(n988), .A4(n987), .X(
        res_o[27]) );
  SAEDRVT14_ND2_CDC_1 U406 ( .A1(n112), .A2(n656), .X(n113) );
  SAEDRVT14_AOI21_0P5 U407 ( .A1(n120), .A2(n944), .B(n7), .X(n92) );
  SAEDRVT14_OR4_1 U408 ( .A1(n957), .A2(n956), .A3(n955), .A4(n954), .X(
        res_o[26]) );
  SAEDRVT14_OAI21_0P5 U409 ( .A1(n953), .A2(n952), .B(n951), .X(n954) );
  SAEDRVT14_ND2_CDC_1 U410 ( .A1(n983), .A2(n986), .X(n984) );
  SAEDRVT14_AOI21_0P5 U411 ( .A1(b_i[27]), .A2(n983), .B(n982), .X(n985) );
  SAEDRVT14_INV_4 U412 ( .A(n118), .X(n120) );
  SAEDRVT14_AO32_1 U413 ( .A1(b_i[26]), .A2(n1025), .A3(n950), .B1(n949), .B2(
        n948), .X(n951) );
  SAEDRVT14_OAI21_0P5 U414 ( .A1(n8), .A2(n959), .B(n958), .X(n980) );
  SAEDRVT14_OR4_1 U415 ( .A1(n930), .A2(n929), .A3(n928), .A4(n927), .X(
        res_o[25]) );
  SAEDRVT14_OAI22_0P75 U416 ( .A1(n926), .A2(n925), .B1(b_i[25]), .B2(n924), 
        .X(n927) );
  SAEDRVT14_NR2_MM_1 U417 ( .A1(n7), .A2(n942), .X(n953) );
  SAEDRVT14_OAI22_0P75 U418 ( .A1(n945), .A2(n941), .B1(n1023), .B2(n943), .X(
        n942) );
  SAEDRVT14_OAI21_V1_4 U419 ( .A1(b_i[26]), .A2(n943), .B(a_i[26]), .X(n90) );
  SAEDRVT14_AO32_U_0P5 U420 ( .A1(b_i[24]), .A2(n1025), .A3(n896), .B1(n895), 
        .B2(n894), .X(n897) );
  SAEDRVT14_OAI22_0P75 U421 ( .A1(n919), .A2(n8), .B1(n1022), .B2(n918), .X(
        n923) );
  SAEDRVT14_OAI22_0P75 U422 ( .A1(a_i[25]), .A2(n920), .B1(n926), .B2(n960), 
        .X(n906) );
  SAEDRVT14_AO32_U_0P5 U423 ( .A1(a_i[24]), .A2(n893), .A3(n1017), .B1(n892), 
        .B2(n899), .X(n896) );
  SAEDRVT14_OR3_0P75 U424 ( .A1(n81), .A2(n80), .A3(n79), .X(res_o[22]) );
  SAEDRVT14_OAI21_0P5 U425 ( .A1(n8), .A2(n905), .B(n904), .X(n920) );
  SAEDRVT14_AO2BB2_V1_0P5 U426 ( .A1(n977), .A2(n911), .B1(n862), .B2(n861), 
        .X(n863) );
  SAEDRVT14_OAI21_V1_4 U427 ( .A1(a_i[23]), .A2(n851), .B(b_i[23]), .X(n87) );
  SAEDRVT14_INV_4 U428 ( .A(n851), .X(n868) );
  SAEDRVT14_INV_4 U429 ( .A(n83), .X(n85) );
  SAEDRVT14_OAI21_4 U430 ( .A1(n844), .A2(n837), .B(n40), .X(n83) );
  SAEDRVT14_OAI21_V1_8 U431 ( .A1(n802), .A2(n795), .B(n38), .X(n816) );
  SAEDRVT14_AO32_U_0P5 U432 ( .A1(a_i[18]), .A2(n776), .A3(n1017), .B1(n777), 
        .B2(n775), .X(n761) );
  SAEDRVT14_AO32_U_0P5 U433 ( .A1(a_i[17]), .A2(n750), .A3(n1017), .B1(n751), 
        .B2(n749), .X(n739) );
  SAEDRVT14_AO32_U_0P5 U434 ( .A1(a_i[16]), .A2(n727), .A3(n1017), .B1(n728), 
        .B2(n726), .X(n715) );
  SAEDRVT14_AOI21_1P5 U435 ( .A1(n663), .A2(n145), .B(n662), .X(n1009) );
  SAEDRVT14_AO32_U_0P5 U436 ( .A1(a_i[15]), .A2(n578), .A3(n1017), .B1(n579), 
        .B2(n577), .X(n557) );
  SAEDRVT14_INV_0P5 U437 ( .A(n122), .X(n109) );
  SAEDRVT14_AOI21_1P5 U438 ( .A1(n653), .A2(n978), .B(n661), .X(n122) );
  SAEDRVT14_AO32_U_0P5 U439 ( .A1(a_i[14]), .A2(n547), .A3(n1017), .B1(n620), 
        .B2(n546), .X(n538) );
  SAEDRVT14_AO32_U_0P5 U440 ( .A1(a_i[13]), .A2(n469), .A3(n1017), .B1(n470), 
        .B2(n468), .X(n462) );
  SAEDRVT14_AOI21_1P5 U441 ( .A1(n649), .A2(n918), .B(n655), .X(n945) );
  SAEDRVT14_AOI21_1P5 U442 ( .A1(n644), .A2(n867), .B(n861), .X(n891) );
  SAEDRVT14_AO32_U_0P5 U443 ( .A1(a_i[12]), .A2(n452), .A3(n1017), .B1(n614), 
        .B2(n451), .X(n446) );
  SAEDRVT14_AOI21_1P5 U444 ( .A1(n638), .A2(n836), .B(n646), .X(n82) );
  SAEDRVT14_AO32_U_0P5 U445 ( .A1(a_i[11]), .A2(n434), .A3(n1017), .B1(n435), 
        .B2(n433), .X(n420) );
  SAEDRVT14_AO32_U_0P5 U446 ( .A1(a_i[10]), .A2(n296), .A3(n1017), .B1(n608), 
        .B2(n295), .X(n287) );
  SAEDRVT14_OAI21_3 U447 ( .A1(a_i[11]), .A2(n416), .B(b_i[11]), .X(n30) );
  SAEDRVT14_AOI21_1P5 U448 ( .A1(n633), .A2(n794), .B(n640), .X(n815) );
  SAEDRVT14_AOI21_1P5 U449 ( .A1(n628), .A2(n737), .B(n635), .X(n758) );
  SAEDRVT14_OAI21_3 U450 ( .A1(b_i[10]), .A2(n283), .B(a_i[10]), .X(n29) );
  SAEDRVT14_AO32_U_0P5 U451 ( .A1(a_i[9]), .A2(n277), .A3(n1017), .B1(n278), 
        .B2(n276), .X(n257) );
  SAEDRVT14_AO32_U_0P5 U452 ( .A1(a_i[8]), .A2(n248), .A3(n1017), .B1(n602), 
        .B2(n247), .X(n217) );
  SAEDRVT14_OAI21_3 U453 ( .A1(a_i[9]), .A2(n253), .B(b_i[9]), .X(n28) );
  SAEDRVT14_AOI21_1P5 U454 ( .A1(n623), .A2(n555), .B(n630), .X(n712) );
  SAEDRVT14_AO32_U_0P5 U455 ( .A1(n408), .A2(n409), .A3(n1017), .B1(n410), 
        .B2(n407), .X(n380) );
  SAEDRVT14_AOI21_0P5 U456 ( .A1(n558), .A2(n302), .B(n307), .X(n325) );
  SAEDRVT14_OAI21_3 U457 ( .A1(b_i[8]), .A2(n213), .B(a_i[8]), .X(n27) );
  SAEDRVT14_AOI21_1P5 U458 ( .A1(n611), .A2(n418), .B(n619), .X(n443) );
  SAEDRVT14_AOI21_0P5 U459 ( .A1(n558), .A2(n351), .B(n1005), .X(n375) );
  SAEDRVT14_OAI22_0P75 U460 ( .A1(n935), .A2(n10), .B1(n1016), .B2(n1011), .X(
        n165) );
  SAEDRVT14_AOI21_0P5 U461 ( .A1(n161), .A2(n160), .B(n1036), .X(n166) );
  SAEDRVT14_OAI22_0P75 U462 ( .A1(n913), .A2(n11), .B1(n1016), .B2(n157), .X(
        n142) );
  SAEDRVT14_AOI21_1P5 U463 ( .A1(n599), .A2(n378), .B(n607), .X(n214) );
  SAEDRVT14_AOI21_1P5 U464 ( .A1(n593), .A2(n340), .B(n601), .X(n316) );
  SAEDRVT14_OAI21_V1_4 U465 ( .A1(n15), .A2(n489), .B(n20), .X(n21) );
  SAEDRVT14_AOI21_1P5 U466 ( .A1(n587), .A2(n490), .B(n595), .X(n366) );
  SAEDRVT14_INV_0P75 U467 ( .A(n182), .X(n997) );
  SAEDRVT14_AO32_U_0P5 U468 ( .A1(n526), .A2(n16), .A3(n529), .B1(b_i[1]), 
        .B2(n14), .X(n532) );
  SAEDRVT14_OAI21_2 U469 ( .A1(n1002), .A2(n170), .B(a_i[2]), .X(n19) );
  SAEDRVT14_OAI21_V1_4 U470 ( .A1(n669), .A2(n16), .B(n18), .X(n170) );
  SAEDRVT14_ND2_1P5 U471 ( .A1(n496), .A2(n421), .X(n59) );
  SAEDRVT14_INV_0P75 U472 ( .A(n524), .X(n672) );
  SAEDRVT14_OR3_0P75 U473 ( .A1(n56), .A2(n55), .A3(n54), .X(n699) );
  SAEDRVT14_NR2_MM_1 U474 ( .A1(b_i[29]), .A2(n157), .X(n662) );
  SAEDRVT14_NR2_MM_1 U475 ( .A1(b_i[27]), .A2(n986), .X(n661) );
  SAEDRVT14_ND2_MM_2 U476 ( .A1(n670), .A2(b_i[1]), .X(n45) );
  SAEDRVT14_NR2_MM_1 U477 ( .A1(b_i[23]), .A2(n873), .X(n861) );
  SAEDRVT14_NR2_MM_1 U478 ( .A1(a_i[30]), .A2(n585), .X(n1010) );
  SAEDRVT14_ND2_1P5 U479 ( .A1(b_i[0]), .A2(b_i[1]), .X(n44) );
  SAEDRVT14_INV_0P75 U480 ( .A(b_i[30]), .X(n585) );
  SAEDRVT14_INV_0P75 U481 ( .A(b_i[27]), .X(n981) );
  SAEDRVT14_INV_0P75 U482 ( .A(a_i[13]), .X(n470) );
  SAEDRVT14_INV_S_1 U483 ( .A(a_i[9]), .X(n278) );
  SAEDRVT14_BUF_3 U484 ( .A(a_i[7]), .X(n408) );
  SAEDRVT14_BUF_S_6 U485 ( .A(n441), .X(n9) );
  SAEDRVT14_INV_0P5 U486 ( .A(n574), .X(n10) );
  SAEDRVT14_INV_0P5 U487 ( .A(n574), .X(n11) );
  SAEDRVT14_INV_0P5 U488 ( .A(n1014), .X(n13) );
  SAEDRVT14_OAI22_0P5 U489 ( .A1(n712), .A2(n734), .B1(n1023), .B2(n711), .X(
        n713) );
  SAEDRVT14_OAI22_0P5 U490 ( .A1(n535), .A2(n734), .B1(n1023), .B2(n534), .X(
        n536) );
  SAEDRVT14_INV_S_2 U491 ( .A(n890), .X(n1023) );
  SAEDRVT14_OAI22_0P5 U492 ( .A1(n567), .A2(n770), .B1(n429), .B2(n766), .X(
        n404) );
  SAEDRVT14_OAI22_0P5 U493 ( .A1(n881), .A2(n770), .B1(n693), .B2(n10), .X(
        n447) );
  SAEDRVT14_OAI22_0P5 U494 ( .A1(n717), .A2(n770), .B1(n693), .B2(n766), .X(
        n362) );
  SAEDRVT14_OAI22_0P5 U495 ( .A1(n742), .A2(n770), .B1(n513), .B2(n766), .X(
        n336) );
  SAEDRVT14_ND2_1P5 U496 ( .A1(n703), .A2(n520), .X(n770) );
  SAEDRVT14_INV_S_3 U497 ( .A(n384), .X(n682) );
  SAEDRVT14_OAI22_0P5 U498 ( .A1(n586), .A2(n1019), .B1(n394), .B2(n45), .X(
        n57) );
  SAEDRVT14_INV_4 U499 ( .A(n387), .X(n1019) );
  SAEDRVT14_INV_S_2 U500 ( .A(n44), .X(n397) );
  SAEDRVT14_INV_4 U501 ( .A(n869), .X(n1016) );
  SAEDRVT14_AOI21_0P5 U502 ( .A1(n85), .A2(n944), .B(n7), .X(n42) );
  SAEDRVT14_AOI21_0P5 U503 ( .A1(n368), .A2(n944), .B(n7), .X(n350) );
  SAEDRVT14_AOI21_0P5 U504 ( .A1(n318), .A2(n944), .B(n7), .X(n301) );
  SAEDRVT14_AOI21_0P5 U505 ( .A1(n944), .A2(n669), .B(n13), .X(n525) );
  SAEDRVT14_OAI221_0P5 U506 ( .A1(n16), .A2(n1017), .B1(a_i[1]), .B2(n527), 
        .C(n1025), .X(n14) );
  SAEDRVT14_NR2_1 U507 ( .A1(n1002), .A2(n586), .X(n589) );
  SAEDRVT14_OAI21_0P5 U508 ( .A1(n601), .A2(n600), .B(n599), .X(n603) );
  SAEDRVT14_OAI21_0P5 U509 ( .A1(n861), .A2(n650), .B(n649), .X(n651) );
  SAEDRVT14_NR2_MM_1 U510 ( .A1(b_i[19]), .A2(n802), .X(n640) );
  SAEDRVT14_OAI21_0P5 U511 ( .A1(n716), .A2(n352), .B(n688), .X(n697) );
  SAEDRVT14_ND2_CDC_1 U512 ( .A1(a_i[2]), .A2(n4), .X(n684) );
  SAEDRVT14_NR2_1 U513 ( .A1(n332), .A2(n307), .X(n604) );
  SAEDRVT14_NR2_1 U514 ( .A1(a_i[12]), .A2(n445), .X(n622) );
  SAEDRVT14_NR2_1 U515 ( .A1(a_i[18]), .A2(n760), .X(n637) );
  SAEDRVT14_ND2_CDC_1 U516 ( .A1(b_i[23]), .A2(n873), .X(n644) );
  SAEDRVT14_AOI21_0P5 U517 ( .A1(n664), .A2(n663), .B(n662), .X(n665) );
  SAEDRVT14_ND2_CDC_1 U518 ( .A1(a_i[3]), .A2(n682), .X(n179) );
  SAEDRVT14_ND2_CDC_1 U519 ( .A1(n332), .A2(n391), .X(n200) );
  SAEDRVT14_ND2_CDC_1 U520 ( .A1(n220), .A2(n219), .X(n221) );
  SAEDRVT14_AO221_0P5 U521 ( .A1(n1002), .A2(n785), .B1(n421), .B2(n790), .C(
        n496), .X(n859) );
  SAEDRVT14_NR2_1 U522 ( .A1(n751), .A2(n44), .X(n187) );
  SAEDRVT14_NR2_1 U523 ( .A1(n579), .A2(n44), .X(n235) );
  SAEDRVT14_NR2_1 U524 ( .A1(n579), .A2(n1019), .X(n559) );
  SAEDRVT14_ND2_CDC_1 U525 ( .A1(a_i[25]), .A2(n3), .X(n969) );
  SAEDRVT14_NR2_1 U526 ( .A1(n16), .A2(n1019), .X(n509) );
  SAEDRVT14_NR2_MM_1 U527 ( .A1(b_i[5]), .A2(n345), .X(n601) );
  SAEDRVT14_OR3_0P5 U528 ( .A1(n856), .A2(n383), .A3(n382), .X(n428) );
  SAEDRVT14_AOI22_0P5 U529 ( .A1(n441), .A2(n443), .B1(n944), .B2(n442), .X(
        n452) );
  SAEDRVT14_AOI22_0P5 U530 ( .A1(n9), .A2(n712), .B1(n944), .B2(n711), .X(n727) );
  SAEDRVT14_ND2_CDC_1 U531 ( .A1(a_i[25]), .A2(n397), .X(n95) );
  SAEDRVT14_ND2_CDC_1 U532 ( .A1(a_i[5]), .A2(n3), .X(n478) );
  SAEDRVT14_OR3_0P5 U533 ( .A1(n223), .A2(n222), .A3(n221), .X(n354) );
  SAEDRVT14_OR4_1 U534 ( .A1(n401), .A2(n402), .A3(n262), .A4(n263), .X(n831)
         );
  SAEDRVT14_ND2_CDC_1 U535 ( .A1(a_i[9]), .A2(n5), .X(n424) );
  SAEDRVT14_ND2_CDC_1 U536 ( .A1(a_i[11]), .A2(n682), .X(n193) );
  SAEDRVT14_ND2_CDC_1 U537 ( .A1(a_i[10]), .A2(n397), .X(n389) );
  SAEDRVT14_ND2_CDC_1 U538 ( .A1(a_i[24]), .A2(n4), .X(n153) );
  SAEDRVT14_NR2_1 U539 ( .A1(n1005), .A2(n1036), .X(n719) );
  SAEDRVT14_OAI21_0P5 U540 ( .A1(n8), .A2(n492), .B(n491), .X(n493) );
  SAEDRVT14_NR2_1 U541 ( .A1(n312), .A2(n311), .X(n313) );
  SAEDRVT14_ND2_CDC_1 U542 ( .A1(n703), .A2(n201), .X(n762) );
  SAEDRVT14_AOI21_0P5 U543 ( .A1(n821), .A2(b_i[20]), .B(n820), .X(n822) );
  SAEDRVT14_AOI21_0P5 U544 ( .A1(n720), .A2(n331), .B(n330), .X(n830) );
  SAEDRVT14_NR2_1 U545 ( .A1(n864), .A2(n863), .X(n865) );
  SAEDRVT14_ND2_CDC_1 U546 ( .A1(n923), .A2(n926), .X(n924) );
  SAEDRVT14_AN3_0P5 U547 ( .A1(n61), .A2(n152), .A3(n94), .X(n933) );
  SAEDRVT14_OA21B_1 U548 ( .A1(n47), .A2(n866), .B(n427), .X(n966) );
  SAEDRVT14_NR2_1 U549 ( .A1(n785), .A2(n879), .X(n502) );
  SAEDRVT14_OAI21_0P5 U550 ( .A1(n483), .A2(n6), .B(n406), .X(n413) );
  SAEDRVT14_AOI21_0P5 U551 ( .A1(n558), .A2(n420), .B(n419), .X(n440) );
  SAEDRVT14_AOI21_0P5 U552 ( .A1(n558), .A2(n557), .B(n556), .X(n584) );
  SAEDRVT14_OAI21_0P5 U553 ( .A1(n824), .A2(n823), .B(n822), .X(n825) );
  SAEDRVT14_OAI21_0P5 U554 ( .A1(n866), .A2(n66), .B(n865), .X(n875) );
  SAEDRVT14_OAI21_0P5 U555 ( .A1(n977), .A2(n66), .B(n976), .X(n988) );
  SAEDRVT14_OR3_0P5 U556 ( .A1(n252), .A2(n251), .A3(n250), .X(res_o[8]) );
  SAEDRVT14_OR4_1 U557 ( .A1(n849), .A2(n848), .A3(n847), .A4(n846), .X(
        res_o[21]) );
  SAEDRVT14_INV_S_1 U558 ( .A(a_i[21]), .X(n844) );
  SAEDRVT14_ND2_CDC_1 U559 ( .A1(b_i[21]), .A2(n844), .X(n638) );
  SAEDRVT14_INV_0P5 U560 ( .A(b_i[20]), .X(n819) );
  SAEDRVT14_NR2_1 U561 ( .A1(a_i[20]), .A2(n819), .X(n643) );
  SAEDRVT14_INV_S_1 U562 ( .A(a_i[19]), .X(n802) );
  SAEDRVT14_ND2_CDC_1 U563 ( .A1(b_i[19]), .A2(n802), .X(n633) );
  SAEDRVT14_INV_0P5 U564 ( .A(b_i[18]), .X(n760) );
  SAEDRVT14_INV_S_1 U565 ( .A(a_i[17]), .X(n751) );
  SAEDRVT14_ND2_CDC_1 U566 ( .A1(b_i[17]), .A2(n751), .X(n628) );
  SAEDRVT14_INV_0P5 U567 ( .A(b_i[16]), .X(n714) );
  SAEDRVT14_NR2_1 U568 ( .A1(a_i[16]), .A2(n714), .X(n632) );
  SAEDRVT14_ND2_CDC_1 U569 ( .A1(b_i[15]), .A2(n579), .X(n623) );
  SAEDRVT14_INV_0P5 U570 ( .A(b_i[14]), .X(n537) );
  SAEDRVT14_NR2_1 U571 ( .A1(a_i[14]), .A2(n537), .X(n627) );
  SAEDRVT14_ND2_CDC_1 U572 ( .A1(b_i[13]), .A2(n470), .X(n617) );
  SAEDRVT14_INV_0P5 U573 ( .A(b_i[12]), .X(n445) );
  SAEDRVT14_INV_0P75 U574 ( .A(a_i[11]), .X(n435) );
  SAEDRVT14_ND2_CDC_1 U575 ( .A1(b_i[11]), .A2(n435), .X(n611) );
  SAEDRVT14_INV_0P5 U576 ( .A(b_i[10]), .X(n286) );
  SAEDRVT14_NR2_1 U577 ( .A1(a_i[10]), .A2(n286), .X(n616) );
  SAEDRVT14_ND2_CDC_1 U578 ( .A1(b_i[9]), .A2(n278), .X(n605) );
  SAEDRVT14_INV_0P5 U579 ( .A(b_i[8]), .X(n216) );
  SAEDRVT14_NR2_MM_1 U580 ( .A1(a_i[8]), .A2(n216), .X(n610) );
  SAEDRVT14_ND2_CDC_1 U581 ( .A1(b_i[7]), .A2(n410), .X(n599) );
  SAEDRVT14_INV_S_2 U582 ( .A(a_i[5]), .X(n345) );
  SAEDRVT14_ND2_CDC_1 U583 ( .A1(b_i[5]), .A2(n345), .X(n593) );
  SAEDRVT14_NR2_MM_1 U584 ( .A1(a_i[4]), .A2(n1005), .X(n598) );
  SAEDRVT14_ND2_CDC_1 U585 ( .A1(n496), .A2(n15), .X(n587) );
  SAEDRVT14_INV_S_2 U586 ( .A(b_i[1]), .X(n526) );
  SAEDRVT14_ND2_CDC_1 U587 ( .A1(n394), .A2(b_i[0]), .X(n524) );
  SAEDRVT14_OAI21_0P5 U588 ( .A1(b_i[1]), .A2(n16), .B(n672), .X(n17) );
  SAEDRVT14_OAI21_0P5 U589 ( .A1(a_i[1]), .A2(n526), .B(n17), .X(n168) );
  SAEDRVT14_NR2_MM_1 U590 ( .A1(a_i[2]), .A2(n421), .X(n592) );
  SAEDRVT14_INV_S_1 U591 ( .A(a_i[2]), .X(n586) );
  SAEDRVT14_OAI22_1 U592 ( .A1(n168), .A2(n592), .B1(n1002), .B2(n586), .X(
        n490) );
  SAEDRVT14_NR2_MM_1 U593 ( .A1(n496), .A2(n15), .X(n595) );
  SAEDRVT14_INV_S_1 U594 ( .A(a_i[4]), .X(n590) );
  SAEDRVT14_OAI22_1 U595 ( .A1(n598), .A2(n366), .B1(n687), .B2(n590), .X(n340) );
  SAEDRVT14_NR2_MM_1 U596 ( .A1(b_i[7]), .A2(n410), .X(n607) );
  SAEDRVT14_INV_S_1 U597 ( .A(a_i[8]), .X(n602) );
  SAEDRVT14_OAI22_1 U598 ( .A1(n610), .A2(n214), .B1(b_i[8]), .B2(n602), .X(
        n255) );
  SAEDRVT14_NR2_MM_1 U599 ( .A1(b_i[9]), .A2(n278), .X(n613) );
  SAEDRVT14_INV_0P75 U600 ( .A(a_i[10]), .X(n608) );
  SAEDRVT14_OAI22_1 U601 ( .A1(n616), .A2(n284), .B1(b_i[10]), .B2(n608), .X(
        n418) );
  SAEDRVT14_NR2_MM_1 U602 ( .A1(b_i[11]), .A2(n435), .X(n619) );
  SAEDRVT14_INV_S_1 U603 ( .A(a_i[12]), .X(n614) );
  SAEDRVT14_OAI22_1 U604 ( .A1(n622), .A2(n443), .B1(b_i[12]), .B2(n614), .X(
        n460) );
  SAEDRVT14_NR2_1 U605 ( .A1(b_i[13]), .A2(n470), .X(n625) );
  SAEDRVT14_INV_0P75 U606 ( .A(a_i[14]), .X(n620) );
  SAEDRVT14_OAI22_1 U607 ( .A1(n627), .A2(n535), .B1(b_i[14]), .B2(n620), .X(
        n555) );
  SAEDRVT14_NR2_MM_1 U608 ( .A1(b_i[15]), .A2(n579), .X(n630) );
  SAEDRVT14_INV_S_1 U609 ( .A(a_i[16]), .X(n728) );
  SAEDRVT14_NR2_MM_1 U610 ( .A1(b_i[17]), .A2(n751), .X(n635) );
  SAEDRVT14_INV_S_1 U611 ( .A(a_i[18]), .X(n777) );
  SAEDRVT14_OAI22_1 U612 ( .A1(n637), .A2(n758), .B1(b_i[18]), .B2(n777), .X(
        n794) );
  SAEDRVT14_INV_S_1 U613 ( .A(a_i[20]), .X(n823) );
  SAEDRVT14_OAI22_1 U614 ( .A1(n643), .A2(n815), .B1(b_i[20]), .B2(n823), .X(
        n836) );
  SAEDRVT14_NR2_MM_1 U615 ( .A1(b_i[21]), .A2(n844), .X(n646) );
  SAEDRVT14_NR2_1 U616 ( .A1(op_i[1]), .A2(op_i[3]), .X(n41) );
  SAEDRVT14_ND2_CDC_1 U617 ( .A1(op_i[0]), .A2(n41), .X(n668) );
  SAEDRVT14_NR2_1P5 U618 ( .A1(op_i[2]), .A2(n668), .X(n441) );
  SAEDRVT14_OAI21_2 U619 ( .A1(a_i[3]), .A2(n492), .B(n496), .X(n20) );
  SAEDRVT14_INV_S_2 U620 ( .A(n21), .X(n368) );
  SAEDRVT14_OAI21_2 U621 ( .A1(n687), .A2(n21), .B(a_i[4]), .X(n22) );
  SAEDRVT14_OAI21_V1_8 U622 ( .A1(n345), .A2(n341), .B(n23), .X(n24) );
  SAEDRVT14_OAI21_V1_8 U623 ( .A1(n307), .A2(n318), .B(n25), .X(n376) );
  SAEDRVT14_OAI21_V1_8 U624 ( .A1(n408), .A2(n376), .B(b_i[7]), .X(n26) );
  SAEDRVT14_AO21B_0P5 U625 ( .A1(n408), .A2(n376), .B(n26), .X(n213) );
  SAEDRVT14_AO21B_0P5 U626 ( .A1(b_i[8]), .A2(n213), .B(n27), .X(n253) );
  SAEDRVT14_AO21B_0P5 U627 ( .A1(a_i[9]), .A2(n253), .B(n28), .X(n283) );
  SAEDRVT14_AO21B_0P5 U628 ( .A1(b_i[10]), .A2(n283), .B(n29), .X(n416) );
  SAEDRVT14_AO21B_0P5 U629 ( .A1(a_i[11]), .A2(n416), .B(n30), .X(n442) );
  SAEDRVT14_OAI21_4 U630 ( .A1(b_i[12]), .A2(n442), .B(a_i[12]), .X(n31) );
  SAEDRVT14_AO21B_0P5 U631 ( .A1(b_i[12]), .A2(n442), .B(n31), .X(n458) );
  SAEDRVT14_OAI21_4 U632 ( .A1(a_i[13]), .A2(n458), .B(b_i[13]), .X(n32) );
  SAEDRVT14_AO21B_0P5 U633 ( .A1(a_i[13]), .A2(n458), .B(n32), .X(n534) );
  SAEDRVT14_OAI21_4 U634 ( .A1(b_i[14]), .A2(n534), .B(a_i[14]), .X(n33) );
  SAEDRVT14_AO21B_0P5 U635 ( .A1(b_i[14]), .A2(n534), .B(n33), .X(n553) );
  SAEDRVT14_AO21B_0P5 U636 ( .A1(a_i[15]), .A2(n553), .B(n34), .X(n711) );
  SAEDRVT14_AO21B_0P5 U637 ( .A1(b_i[16]), .A2(n711), .B(n35), .X(n735) );
  SAEDRVT14_OAI21_4 U638 ( .A1(a_i[17]), .A2(n735), .B(b_i[17]), .X(n36) );
  SAEDRVT14_AO21B_0P5 U639 ( .A1(a_i[17]), .A2(n735), .B(n36), .X(n757) );
  SAEDRVT14_OAI21_4 U640 ( .A1(b_i[18]), .A2(n757), .B(a_i[18]), .X(n37) );
  SAEDRVT14_AO21B_0P5 U641 ( .A1(b_i[18]), .A2(n757), .B(n37), .X(n791) );
  SAEDRVT14_OAI21_2 U642 ( .A1(a_i[19]), .A2(n791), .B(b_i[19]), .X(n38) );
  SAEDRVT14_AO21B_0P5 U643 ( .A1(b_i[20]), .A2(n816), .B(n39), .X(n833) );
  SAEDRVT14_INV_S_2 U644 ( .A(n833), .X(n837) );
  SAEDRVT14_OR4_1 U645 ( .A1(op_i[0]), .A2(op_i[2]), .A3(op_i[1]), .A4(op_i[3]), .X(n71) );
  SAEDRVT14_AN2_MM_0P5 U646 ( .A1(op_i[2]), .A2(n41), .X(n667) );
  SAEDRVT14_OAI21_0P5 U647 ( .A1(n82), .A2(n734), .B(n42), .X(n74) );
  SAEDRVT14_INV_S_1 U648 ( .A(b_i[22]), .X(n86) );
  SAEDRVT14_INV_0P5 U649 ( .A(op_i[3]), .X(n48) );
  SAEDRVT14_OAI22_0P5 U650 ( .A1(b_i[22]), .A2(n74), .B1(n86), .B2(n960), .X(
        n43) );
  SAEDRVT14_INV_4 U651 ( .A(n960), .X(n1017) );
  SAEDRVT14_NR2_1P5 U652 ( .A1(n1017), .A2(op_i[0]), .X(n869) );
  SAEDRVT14_INV_0P75 U653 ( .A(a_i[22]), .X(n641) );
  SAEDRVT14_AOI21_0P5 U654 ( .A1(n43), .A2(n1016), .B(n641), .X(n81) );
  SAEDRVT14_NR2_1 U655 ( .A1(n802), .A2(n44), .X(n226) );
  SAEDRVT14_ND2_CDC_1 U656 ( .A1(n526), .A2(b_i[0]), .X(n507) );
  SAEDRVT14_BUF_S_0P75 U657 ( .A(n507), .X(n384) );
  SAEDRVT14_NR2_1 U658 ( .A1(n844), .A2(n384), .X(n223) );
  SAEDRVT14_NR2_1P5 U659 ( .A1(b_i[0]), .A2(b_i[1]), .X(n391) );
  SAEDRVT14_ND2_CDC_1 U660 ( .A1(a_i[22]), .A2(n391), .X(n62) );
  SAEDRVT14_INV_0P5 U661 ( .A(n62), .X(n46) );
  SAEDRVT14_INV_0P5 U662 ( .A(b_i[0]), .X(n670) );
  SAEDRVT14_NR2_1 U663 ( .A1(n823), .A2(n45), .X(n174) );
  SAEDRVT14_OR4_1 U664 ( .A1(n226), .A2(n223), .A3(n46), .A4(n174), .X(n154)
         );
  SAEDRVT14_INV_0P5 U665 ( .A(n154), .X(n931) );
  SAEDRVT14_INV_0P5 U666 ( .A(n496), .X(n498) );
  SAEDRVT14_INV_0P5 U667 ( .A(n47), .X(n720) );
  SAEDRVT14_ND2_CDC_1 U668 ( .A1(n48), .A2(op_i[1]), .X(n676) );
  SAEDRVT14_OR4_1 U669 ( .A1(b_i[28]), .A2(b_i[27]), .A3(b_i[26]), .A4(b_i[25]), .X(n56) );
  SAEDRVT14_OR4_1 U670 ( .A1(b_i[8]), .A2(b_i[7]), .A3(b_i[6]), .A4(b_i[5]), 
        .X(n49) );
  SAEDRVT14_OR4_1 U671 ( .A1(b_i[31]), .A2(b_i[30]), .A3(b_i[29]), .A4(n49), 
        .X(n55) );
  SAEDRVT14_OR4_1 U672 ( .A1(b_i[16]), .A2(b_i[15]), .A3(b_i[14]), .A4(b_i[13]), .X(n53) );
  SAEDRVT14_OR4_1 U673 ( .A1(b_i[12]), .A2(b_i[11]), .A3(b_i[10]), .A4(b_i[9]), 
        .X(n52) );
  SAEDRVT14_OR4_1 U674 ( .A1(b_i[24]), .A2(b_i[23]), .A3(b_i[22]), .A4(b_i[21]), .X(n51) );
  SAEDRVT14_OR4_1 U675 ( .A1(b_i[20]), .A2(b_i[19]), .A3(b_i[18]), .A4(b_i[17]), .X(n50) );
  SAEDRVT14_OR4_1 U676 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .X(n54) );
  SAEDRVT14_OR4_2 U677 ( .A1(op_i[0]), .A2(op_i[2]), .A3(n676), .A4(n699), .X(
        n1036) );
  SAEDRVT14_NR2_1 U678 ( .A1(n1036), .A2(n687), .X(n64) );
  SAEDRVT14_AOI21_0P5 U679 ( .A1(a_i[1]), .A2(n682), .B(n57), .X(n769) );
  SAEDRVT14_ND2_CDC_1 U680 ( .A1(a_i[3]), .A2(n397), .X(n685) );
  SAEDRVT14_ND2_CDC_1 U681 ( .A1(a_i[5]), .A2(n682), .X(n360) );
  SAEDRVT14_ND2_CDC_1 U682 ( .A1(a_i[4]), .A2(n4), .X(n180) );
  SAEDRVT14_AN4_1 U683 ( .A1(n685), .A2(n360), .A3(n180), .A4(n200), .X(n767)
         );
  SAEDRVT14_AO221_0P5 U684 ( .A1(n1002), .A2(n769), .B1(n1000), .B2(n767), .C(
        n496), .X(n304) );
  SAEDRVT14_INV_0P5 U685 ( .A(n719), .X(n965) );
  SAEDRVT14_OAI22_0P5 U686 ( .A1(n931), .A2(n879), .B1(n304), .B2(n965), .X(
        n70) );
  SAEDRVT14_BUF_S_2 U687 ( .A(a_i[31]), .X(n1034) );
  SAEDRVT14_INV_S_1 U688 ( .A(a_i[30]), .X(n1011) );
  SAEDRVT14_NR2_1 U689 ( .A1(n1011), .A2(n1019), .X(n58) );
  SAEDRVT14_ND2B_U_0P5 U690 ( .A(n676), .B(op_i[2]), .X(n521) );
  SAEDRVT14_INV_0P5 U691 ( .A(n521), .X(n703) );
  SAEDRVT14_INV_0P5 U692 ( .A(n699), .X(n183) );
  SAEDRVT14_ND2_CDC_1 U693 ( .A1(n183), .A2(n1005), .X(n186) );
  SAEDRVT14_NR2_1 U694 ( .A1(n59), .A2(n186), .X(n196) );
  SAEDRVT14_NR2_1 U695 ( .A1(n751), .A2(n384), .X(n227) );
  SAEDRVT14_NR2_1 U696 ( .A1(n777), .A2(n1019), .X(n175) );
  SAEDRVT14_NR2_1 U697 ( .A1(n728), .A2(n45), .X(n189) );
  SAEDRVT14_OR4_1 U698 ( .A1(n227), .A2(n235), .A3(n175), .A4(n189), .X(n938)
         );
  SAEDRVT14_INV_0P5 U699 ( .A(n938), .X(n764) );
  SAEDRVT14_INV_0P5 U700 ( .A(n352), .X(n233) );
  SAEDRVT14_ND2_0P5 U701 ( .A1(n233), .A2(n64), .X(n971) );
  SAEDRVT14_OAI22_0P5 U702 ( .A1(n935), .A2(n766), .B1(n764), .B2(n971), .X(
        n69) );
  SAEDRVT14_INV_S_1 U703 ( .A(a_i[28]), .X(n656) );
  SAEDRVT14_NR2_1 U704 ( .A1(n656), .A2(n45), .X(n60) );
  SAEDRVT14_AOI21_0P5 U705 ( .A1(n397), .A2(a_i[29]), .B(n60), .X(n61) );
  SAEDRVT14_ND2_CDC_1 U706 ( .A1(a_i[26]), .A2(n391), .X(n152) );
  SAEDRVT14_ND2_CDC_1 U707 ( .A1(a_i[27]), .A2(n682), .X(n94) );
  SAEDRVT14_NR2_1 U708 ( .A1(n352), .A2(n186), .X(n201) );
  SAEDRVT14_ND2_CDC_1 U709 ( .A1(a_i[23]), .A2(n682), .X(n98) );
  SAEDRVT14_AN4_1 U710 ( .A1(n62), .A2(n153), .A3(n95), .A4(n98), .X(n763) );
  SAEDRVT14_OR2_MM_0P5 U711 ( .A1(n186), .A2(n521), .X(n964) );
  SAEDRVT14_OAI22_0P5 U712 ( .A1(n933), .A2(n762), .B1(n763), .B2(n11), .X(n68) );
  SAEDRVT14_ND2_CDC_1 U713 ( .A1(a_i[13]), .A2(n682), .X(n237) );
  SAEDRVT14_ND2_CDC_1 U714 ( .A1(a_i[11]), .A2(n397), .X(n241) );
  SAEDRVT14_NR2_1 U715 ( .A1(n620), .A2(n1019), .X(n190) );
  SAEDRVT14_INV_0P5 U716 ( .A(n190), .X(n63) );
  SAEDRVT14_ND2_CDC_1 U717 ( .A1(a_i[12]), .A2(n5), .X(n194) );
  SAEDRVT14_AN4_1 U718 ( .A1(n237), .A2(n241), .A3(n63), .A4(n194), .X(n940)
         );
  SAEDRVT14_INV_S_1 U719 ( .A(n64), .X(n566) );
  SAEDRVT14_NR2_1 U720 ( .A1(n498), .A2(n566), .X(n65) );
  SAEDRVT14_ND2_CDC_1 U721 ( .A1(n421), .A2(n65), .X(n911) );
  SAEDRVT14_ND2_CDC_1 U722 ( .A1(a_i[9]), .A2(n682), .X(n242) );
  SAEDRVT14_ND2_CDC_1 U723 ( .A1(n408), .A2(n397), .X(n359) );
  SAEDRVT14_ND2_CDC_1 U724 ( .A1(a_i[8]), .A2(n2), .X(n199) );
  SAEDRVT14_ND2_CDC_1 U725 ( .A1(a_i[10]), .A2(n391), .X(n192) );
  SAEDRVT14_AN4_1 U726 ( .A1(n242), .A2(n359), .A3(n199), .A4(n192), .X(n768)
         );
  SAEDRVT14_ND2_0P5 U727 ( .A1(n1002), .A2(n65), .X(n66) );
  SAEDRVT14_OAI22_0P5 U728 ( .A1(n940), .A2(n911), .B1(n768), .B2(n66), .X(n67) );
  SAEDRVT14_OR4_1 U729 ( .A1(n70), .A2(n69), .A3(n68), .A4(n67), .X(n80) );
  SAEDRVT14_INV_S_1 U730 ( .A(n71), .X(n890) );
  SAEDRVT14_INV_S_1 U731 ( .A(n9), .X(n1022) );
  SAEDRVT14_INV_0P5 U732 ( .A(n82), .X(n72) );
  SAEDRVT14_OAI22_0P5 U733 ( .A1(n85), .A2(n8), .B1(n1022), .B2(n72), .X(n76)
         );
  SAEDRVT14_AN4_1 U734 ( .A1(op_i[0]), .A2(op_i[2]), .A3(op_i[1]), .A4(op_i[3]), .X(n73) );
  SAEDRVT14_BUF_S_2 U735 ( .A(n558), .X(n1025) );
  SAEDRVT14_AO21B_0P5 U736 ( .A1(n641), .A2(n74), .B(n1025), .X(n75) );
  SAEDRVT14_AOI21_0P5 U737 ( .A1(a_i[22]), .A2(n76), .B(n75), .X(n78) );
  SAEDRVT14_ND2_CDC_1 U738 ( .A1(n76), .A2(n86), .X(n77) );
  SAEDRVT14_OAI22_0P5 U739 ( .A1(n86), .A2(n78), .B1(a_i[22]), .B2(n77), .X(
        n79) );
  SAEDRVT14_INV_S_1 U740 ( .A(a_i[27]), .X(n986) );
  SAEDRVT14_ND2_CDC_1 U741 ( .A1(b_i[27]), .A2(n986), .X(n653) );
  SAEDRVT14_INV_0P5 U742 ( .A(b_i[26]), .X(n949) );
  SAEDRVT14_NR2_1 U743 ( .A1(a_i[26]), .A2(n949), .X(n658) );
  SAEDRVT14_ND2_CDC_1 U744 ( .A1(b_i[25]), .A2(n926), .X(n649) );
  SAEDRVT14_INV_0P5 U745 ( .A(b_i[24]), .X(n895) );
  SAEDRVT14_NR2_1 U746 ( .A1(a_i[24]), .A2(n895), .X(n652) );
  SAEDRVT14_INV_S_1 U747 ( .A(a_i[23]), .X(n873) );
  SAEDRVT14_NR2_1 U748 ( .A1(a_i[22]), .A2(n86), .X(n648) );
  SAEDRVT14_OAI22_1 U749 ( .A1(n648), .A2(n82), .B1(b_i[22]), .B2(n641), .X(
        n867) );
  SAEDRVT14_INV_0P75 U750 ( .A(a_i[24]), .X(n892) );
  SAEDRVT14_NR2_MM_1 U751 ( .A1(b_i[25]), .A2(n926), .X(n655) );
  SAEDRVT14_INV_S_1 U752 ( .A(a_i[26]), .X(n946) );
  SAEDRVT14_OAI22_1 U753 ( .A1(n658), .A2(n945), .B1(b_i[26]), .B2(n946), .X(
        n978) );
  SAEDRVT14_AO21B_0P5 U754 ( .A1(b_i[24]), .A2(n889), .B(n88), .X(n905) );
  SAEDRVT14_INV_S_2 U755 ( .A(n905), .X(n919) );
  SAEDRVT14_AO21B_0P5 U756 ( .A1(b_i[26]), .A2(n943), .B(n90), .X(n959) );
  SAEDRVT14_INV_S_2 U757 ( .A(n959), .X(n979) );
  SAEDRVT14_OAI22_1 U758 ( .A1(a_i[28]), .A2(n110), .B1(n656), .B2(n960), .X(
        n93) );
  SAEDRVT14_INV_S_1 U759 ( .A(b_i[28]), .X(n121) );
  SAEDRVT14_AOI21_0P5 U760 ( .A1(n962), .A2(n93), .B(n121), .X(n117) );
  SAEDRVT14_ND2_CDC_1 U761 ( .A1(a_i[28]), .A2(n391), .X(n96) );
  SAEDRVT14_ND2_CDC_1 U762 ( .A1(a_i[26]), .A2(n3), .X(n229) );
  SAEDRVT14_AN4_1 U763 ( .A1(n96), .A2(n229), .A3(n95), .A4(n94), .X(n99) );
  SAEDRVT14_NR2_MM_1 U764 ( .A1(n47), .A2(n687), .X(n182) );
  SAEDRVT14_ND2_CDC_1 U765 ( .A1(a_i[24]), .A2(n387), .X(n228) );
  SAEDRVT14_ND2_CDC_1 U766 ( .A1(a_i[22]), .A2(n4), .X(n219) );
  SAEDRVT14_NR2_1 U767 ( .A1(n844), .A2(n44), .X(n172) );
  SAEDRVT14_INV_0P5 U768 ( .A(n172), .X(n97) );
  SAEDRVT14_AN4_1 U769 ( .A1(n228), .A2(n219), .A3(n98), .A4(n97), .X(n880) );
  SAEDRVT14_OAI22_0P5 U770 ( .A1(n99), .A2(n997), .B1(n880), .B2(n995), .X(
        n105) );
  SAEDRVT14_OAI22_0P5 U771 ( .A1(n15), .A2(n507), .B1(n16), .B2(n44), .X(n101)
         );
  SAEDRVT14_OAI22_0P5 U772 ( .A1(n590), .A2(n1019), .B1(n586), .B2(n45), .X(
        n100) );
  SAEDRVT14_NR2_1 U773 ( .A1(n101), .A2(n100), .X(n718) );
  SAEDRVT14_ND2_CDC_1 U774 ( .A1(a_i[0]), .A2(n387), .X(n721) );
  SAEDRVT14_OAI22_0P5 U775 ( .A1(n1002), .A2(n718), .B1(n421), .B2(n721), .X(
        n355) );
  SAEDRVT14_ND2_CDC_1 U776 ( .A1(a_i[8]), .A2(n387), .X(n240) );
  SAEDRVT14_ND2_CDC_1 U777 ( .A1(n332), .A2(n2), .X(n357) );
  SAEDRVT14_ND2_CDC_1 U778 ( .A1(a_i[5]), .A2(n397), .X(n178) );
  SAEDRVT14_ND2_CDC_1 U779 ( .A1(n408), .A2(n682), .X(n198) );
  SAEDRVT14_AN4_1 U780 ( .A1(n240), .A2(n357), .A3(n178), .A4(n198), .X(n812)
         );
  SAEDRVT14_ND2_CDC_1 U781 ( .A1(a_i[12]), .A2(n387), .X(n236) );
  SAEDRVT14_ND2_CDC_1 U782 ( .A1(a_i[10]), .A2(n4), .X(n239) );
  SAEDRVT14_ND2_CDC_1 U783 ( .A1(a_i[9]), .A2(n397), .X(n197) );
  SAEDRVT14_AN4_1 U784 ( .A1(n236), .A2(n239), .A3(n193), .A4(n197), .X(n887)
         );
  SAEDRVT14_OAI22_0P5 U785 ( .A1(n812), .A2(n352), .B1(n887), .B2(n47), .X(
        n102) );
  SAEDRVT14_AOI21_0P5 U786 ( .A1(n496), .A2(n355), .B(n102), .X(n450) );
  SAEDRVT14_NR2_1 U787 ( .A1(n777), .A2(n45), .X(n224) );
  SAEDRVT14_NR2_1 U788 ( .A1(n823), .A2(n1019), .X(n222) );
  SAEDRVT14_NR2_1 U789 ( .A1(n802), .A2(n384), .X(n173) );
  SAEDRVT14_OR4_1 U790 ( .A1(n224), .A2(n222), .A3(n173), .A4(n187), .X(n810)
         );
  SAEDRVT14_NR2_1 U791 ( .A1(n728), .A2(n1019), .X(n225) );
  SAEDRVT14_NR2_1 U792 ( .A1(n620), .A2(n45), .X(n234) );
  SAEDRVT14_NR2_1 U793 ( .A1(n579), .A2(n507), .X(n188) );
  SAEDRVT14_NR2_1 U794 ( .A1(n470), .A2(n44), .X(n191) );
  SAEDRVT14_OR4_1 U795 ( .A1(n225), .A2(n234), .A3(n188), .A4(n191), .X(n885)
         );
  SAEDRVT14_OAI22_0P5 U796 ( .A1(n1002), .A2(n810), .B1(n421), .B2(n885), .X(
        n103) );
  SAEDRVT14_OAI22_0P5 U797 ( .A1(n450), .A2(n1005), .B1(n1004), .B2(n103), .X(
        n104) );
  SAEDRVT14_NR2_1 U798 ( .A1(n105), .A2(n104), .X(n108) );
  SAEDRVT14_INV_0P5 U799 ( .A(n1034), .X(n674) );
  SAEDRVT14_OAI22_0P5 U800 ( .A1(n674), .A2(n44), .B1(n1011), .B2(n45), .X(
        n107) );
  SAEDRVT14_INV_S_1 U801 ( .A(a_i[29]), .X(n157) );
  SAEDRVT14_OAI22_0P5 U802 ( .A1(n157), .A2(n384), .B1(n656), .B2(n1019), .X(
        n106) );
  SAEDRVT14_NR2_MM_1 U803 ( .A1(n107), .A2(n106), .X(n882) );
  SAEDRVT14_OAI22_1 U804 ( .A1(n120), .A2(n8), .B1(n1022), .B2(n109), .X(n112)
         );
  SAEDRVT14_AO21B_0P5 U805 ( .A1(n121), .A2(n110), .B(n1016), .X(n111) );
  SAEDRVT14_OAI22_1 U806 ( .A1(n656), .A2(n114), .B1(b_i[28]), .B2(n113), .X(
        n115) );
  SAEDRVT14_OAI21_2 U807 ( .A1(b_i[28]), .A2(n118), .B(a_i[28]), .X(n119) );
  SAEDRVT14_OAI21_V1_4 U808 ( .A1(n121), .A2(n120), .B(n119), .X(n147) );
  SAEDRVT14_NR2_1 U809 ( .A1(a_i[28]), .A2(n121), .X(n659) );
  SAEDRVT14_OAI22_1 U810 ( .A1(n659), .A2(n122), .B1(b_i[28]), .B2(n656), .X(
        n145) );
  SAEDRVT14_OAI21_0P5 U811 ( .A1(n147), .A2(n8), .B(n1014), .X(n123) );
  SAEDRVT14_AOI21_0P5 U812 ( .A1(n682), .A2(a_i[0]), .B(n509), .X(n744) );
  SAEDRVT14_ND2_CDC_1 U813 ( .A1(n496), .A2(n1002), .X(n692) );
  SAEDRVT14_ND2_CDC_1 U814 ( .A1(n332), .A2(n397), .X(n477) );
  SAEDRVT14_ND2_CDC_1 U815 ( .A1(n408), .A2(n3), .X(n333) );
  SAEDRVT14_ND2_CDC_1 U816 ( .A1(a_i[8]), .A2(n682), .X(n390) );
  SAEDRVT14_ND2_CDC_1 U817 ( .A1(a_i[9]), .A2(n387), .X(n271) );
  SAEDRVT14_AN4_1 U818 ( .A1(n477), .A2(n333), .A3(n390), .A4(n271), .X(n832)
         );
  SAEDRVT14_INV_0P5 U819 ( .A(n832), .X(n259) );
  SAEDRVT14_OAI22_0P5 U820 ( .A1(n345), .A2(n1019), .B1(n590), .B2(n384), .X(
        n127) );
  SAEDRVT14_OAI22_0P5 U821 ( .A1(n15), .A2(n45), .B1(n586), .B2(n44), .X(n126)
         );
  SAEDRVT14_NR2_1 U822 ( .A1(n127), .A2(n126), .X(n743) );
  SAEDRVT14_ND2_CDC_1 U823 ( .A1(a_i[12]), .A2(n682), .X(n393) );
  SAEDRVT14_ND2_CDC_1 U824 ( .A1(a_i[13]), .A2(n387), .X(n268) );
  SAEDRVT14_ND2_CDC_1 U825 ( .A1(a_i[11]), .A2(n5), .X(n270) );
  SAEDRVT14_AN4_1 U826 ( .A1(n393), .A2(n268), .A3(n389), .A4(n270), .X(n917)
         );
  SAEDRVT14_OAI22_0P5 U827 ( .A1(n743), .A2(n59), .B1(n917), .B2(n47), .X(n128) );
  SAEDRVT14_AOI21_0P5 U828 ( .A1(n233), .A2(n259), .B(n128), .X(n129) );
  SAEDRVT14_OAI21_0P5 U829 ( .A1(n744), .A2(n692), .B(n129), .X(n463) );
  SAEDRVT14_NR2_1 U830 ( .A1(n641), .A2(n44), .X(n400) );
  SAEDRVT14_INV_0P5 U831 ( .A(n400), .X(n130) );
  SAEDRVT14_ND2_CDC_1 U832 ( .A1(a_i[24]), .A2(n682), .X(n381) );
  SAEDRVT14_ND2_CDC_1 U833 ( .A1(a_i[23]), .A2(n5), .X(n260) );
  SAEDRVT14_ND2_CDC_1 U834 ( .A1(a_i[25]), .A2(n387), .X(n265) );
  SAEDRVT14_AN4_1 U835 ( .A1(n130), .A2(n381), .A3(n260), .A4(n265), .X(n908)
         );
  SAEDRVT14_NR2_1 U836 ( .A1(n823), .A2(n384), .X(n401) );
  SAEDRVT14_NR2_1 U837 ( .A1(n777), .A2(n44), .X(n402) );
  SAEDRVT14_NR2_1 U838 ( .A1(n844), .A2(n1019), .X(n262) );
  SAEDRVT14_NR2_1 U839 ( .A1(n802), .A2(n45), .X(n263) );
  SAEDRVT14_NR2_1 U840 ( .A1(n728), .A2(n384), .X(n403) );
  SAEDRVT14_ND2_CDC_1 U841 ( .A1(a_i[14]), .A2(n397), .X(n392) );
  SAEDRVT14_INV_0P5 U842 ( .A(n392), .X(n131) );
  SAEDRVT14_NR2_1 U843 ( .A1(n751), .A2(n1019), .X(n264) );
  SAEDRVT14_NR2_1 U844 ( .A1(n579), .A2(n45), .X(n267) );
  SAEDRVT14_OR4_1 U845 ( .A1(n403), .A2(n131), .A3(n264), .A4(n267), .X(n740)
         );
  SAEDRVT14_OAI22_0P5 U846 ( .A1(n1002), .A2(n831), .B1(n421), .B2(n740), .X(
        n132) );
  SAEDRVT14_OAI22_0P5 U847 ( .A1(n908), .A2(n995), .B1(n1004), .B2(n132), .X(
        n133) );
  SAEDRVT14_AOI21_0P5 U848 ( .A1(n687), .A2(n463), .B(n133), .X(n137) );
  SAEDRVT14_OAI22_0P5 U849 ( .A1(n157), .A2(n1019), .B1(n986), .B2(n45), .X(
        n135) );
  SAEDRVT14_OAI22_0P5 U850 ( .A1(n656), .A2(n507), .B1(n946), .B2(n44), .X(
        n134) );
  SAEDRVT14_OAI21_0P5 U851 ( .A1(n135), .A2(n134), .B(n182), .X(n136) );
  SAEDRVT14_AOI21_0P5 U852 ( .A1(n137), .A2(n136), .B(n1036), .X(n143) );
  SAEDRVT14_ND2_CDC_1 U853 ( .A1(a_i[30]), .A2(n682), .X(n992) );
  SAEDRVT14_OAI21_0P5 U854 ( .A1(n1019), .A2(n157), .B(n992), .X(n138) );
  SAEDRVT14_AOI21_0P5 U855 ( .A1(n1034), .A2(n2), .B(n138), .X(n913) );
  SAEDRVT14_AOI221_0P5 U856 ( .A1(n157), .A2(n140), .B1(a_i[29]), .B2(n139), 
        .C(b_i[29]), .X(n141) );
  SAEDRVT14_AO21B_0P5 U857 ( .A1(a_i[29]), .A2(n147), .B(n146), .X(n1013) );
  SAEDRVT14_AOI22_1P5 U858 ( .A1(n441), .A2(n1009), .B1(n1013), .B2(n890), .X(
        n163) );
  SAEDRVT14_OAI22_1 U859 ( .A1(n1009), .A2(n734), .B1(n1023), .B2(n1013), .X(
        n148) );
  SAEDRVT14_INV_0P5 U860 ( .A(n768), .X(n289) );
  SAEDRVT14_OAI22_0P5 U861 ( .A1(n767), .A2(n59), .B1(n940), .B2(n47), .X(n150) );
  SAEDRVT14_AOI21_0P5 U862 ( .A1(n233), .A2(n289), .B(n150), .X(n151) );
  SAEDRVT14_OAI21_0P5 U863 ( .A1(n769), .A2(n692), .B(n151), .X(n539) );
  SAEDRVT14_ND2_CDC_1 U864 ( .A1(a_i[25]), .A2(n682), .X(n230) );
  SAEDRVT14_ND2_CDC_1 U865 ( .A1(a_i[23]), .A2(n397), .X(n220) );
  SAEDRVT14_AN4_1 U866 ( .A1(n230), .A2(n220), .A3(n153), .A4(n152), .X(n932)
         );
  SAEDRVT14_OAI22_0P5 U867 ( .A1(n1002), .A2(n154), .B1(n421), .B2(n938), .X(
        n155) );
  SAEDRVT14_OAI22_0P5 U868 ( .A1(n932), .A2(n995), .B1(n1004), .B2(n155), .X(
        n156) );
  SAEDRVT14_AOI21_0P5 U869 ( .A1(n687), .A2(n539), .B(n156), .X(n161) );
  SAEDRVT14_OAI22_0P5 U870 ( .A1(n1011), .A2(n1019), .B1(n656), .B2(n45), .X(
        n159) );
  SAEDRVT14_OAI22_0P5 U871 ( .A1(n157), .A2(n507), .B1(n986), .B2(n44), .X(
        n158) );
  SAEDRVT14_OAI21_0P5 U872 ( .A1(n159), .A2(n158), .B(n182), .X(n160) );
  SAEDRVT14_INV_0P5 U873 ( .A(n168), .X(n588) );
  SAEDRVT14_AOI21_0P5 U874 ( .A1(n9), .A2(n588), .B(n12), .X(n169) );
  SAEDRVT14_OAI21_0P5 U875 ( .A1(n8), .A2(n170), .B(n169), .X(n206) );
  SAEDRVT14_OAI22_0P5 U876 ( .A1(a_i[2]), .A2(n206), .B1(n586), .B2(n960), .X(
        n171) );
  SAEDRVT14_AOI21_0P5 U877 ( .A1(n558), .A2(n171), .B(n421), .X(n212) );
  SAEDRVT14_OAI22_0P5 U878 ( .A1(n933), .A2(n59), .B1(n763), .B2(n352), .X(
        n177) );
  SAEDRVT14_NR4_0P75 U879 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .X(
        n765) );
  SAEDRVT14_OAI22_0P5 U880 ( .A1(n935), .A2(n692), .B1(n765), .B2(n47), .X(
        n176) );
  SAEDRVT14_NR2_1 U881 ( .A1(n177), .A2(n176), .X(n185) );
  SAEDRVT14_NR2_1 U882 ( .A1(n1005), .A2(n699), .X(n504) );
  SAEDRVT14_INV_0P5 U883 ( .A(n504), .X(n484) );
  SAEDRVT14_ND2_CDC_1 U884 ( .A1(a_i[2]), .A2(n391), .X(n181) );
  SAEDRVT14_AN4_1 U885 ( .A1(n181), .A2(n180), .A3(n179), .A4(n178), .X(n184)
         );
  SAEDRVT14_ND2_CDC_1 U886 ( .A1(n183), .A2(n182), .X(n700) );
  SAEDRVT14_OA22_U_0P5 U887 ( .A1(n185), .A2(n484), .B1(n184), .B2(n700), .X(
        n204) );
  SAEDRVT14_NR2_1 U888 ( .A1(n692), .A2(n186), .X(n520) );
  SAEDRVT14_OR4_1 U889 ( .A1(n190), .A2(n189), .A3(n188), .A4(n187), .X(n543)
         );
  SAEDRVT14_AN2B_MM_1 U890 ( .B(n192), .A(n191), .X(n195) );
  SAEDRVT14_AN3_0P5 U891 ( .A1(n195), .A2(n194), .A3(n193), .X(n310) );
  SAEDRVT14_INV_0P5 U892 ( .A(n196), .X(n516) );
  SAEDRVT14_AN4_1 U893 ( .A1(n200), .A2(n199), .A3(n198), .A4(n197), .X(n309)
         );
  SAEDRVT14_INV_0P5 U894 ( .A(n201), .X(n514) );
  SAEDRVT14_OAI22_0P5 U895 ( .A1(n310), .A2(n516), .B1(n309), .B2(n514), .X(
        n202) );
  SAEDRVT14_AOI21_0P5 U896 ( .A1(n520), .A2(n543), .B(n202), .X(n203) );
  SAEDRVT14_AOI21_0P5 U897 ( .A1(n204), .A2(n203), .B(n521), .X(n211) );
  SAEDRVT14_INV_S_1 U898 ( .A(n9), .X(n941) );
  SAEDRVT14_OAI22_0P5 U899 ( .A1(n205), .A2(n1023), .B1(n941), .B2(n588), .X(
        n207) );
  SAEDRVT14_OA221_U_0P5 U900 ( .A1(a_i[2]), .A2(n207), .B1(n586), .B2(n206), 
        .C(n421), .X(n210) );
  SAEDRVT14_AOI21_0P5 U901 ( .A1(n1002), .A2(n207), .B(n869), .X(n208) );
  SAEDRVT14_OAI22_0P5 U902 ( .A1(n769), .A2(n879), .B1(n208), .B2(n586), .X(
        n209) );
  SAEDRVT14_OR4_1 U903 ( .A1(n212), .A2(n211), .A3(n210), .A4(n209), .X(
        res_o[2]) );
  SAEDRVT14_AOI22_0P5 U904 ( .A1(n441), .A2(n214), .B1(n944), .B2(n213), .X(
        n248) );
  SAEDRVT14_OAI22_0P5 U905 ( .A1(n214), .A2(n941), .B1(n1023), .B2(n213), .X(
        n215) );
  SAEDRVT14_NR2_1 U906 ( .A1(n7), .A2(n215), .X(n247) );
  SAEDRVT14_AOI21_0P5 U907 ( .A1(n962), .A2(n217), .B(n216), .X(n252) );
  SAEDRVT14_OAI22_0P5 U908 ( .A1(n718), .A2(n352), .B1(n59), .B2(n721), .X(
        n218) );
  SAEDRVT14_OA21B_1 U909 ( .A1(n47), .A2(n812), .B(n218), .X(n883) );
  SAEDRVT14_OAI22_0P5 U910 ( .A1(n883), .A2(n566), .B1(n1016), .B2(n602), .X(
        n246) );
  SAEDRVT14_INV_0P5 U911 ( .A(n354), .X(n716) );
  SAEDRVT14_NR4_0P75 U912 ( .A1(n227), .A2(n226), .A3(n225), .A4(n224), .X(
        n717) );
  SAEDRVT14_OAI22_0P5 U913 ( .A1(n716), .A2(n770), .B1(n717), .B2(n766), .X(
        n245) );
  SAEDRVT14_ND2_CDC_1 U914 ( .A1(a_i[27]), .A2(n397), .X(n231) );
  SAEDRVT14_AN4_1 U915 ( .A1(n231), .A2(n230), .A3(n229), .A4(n228), .X(n881)
         );
  SAEDRVT14_ND2_CDC_1 U916 ( .A1(n703), .A2(n504), .X(n422) );
  SAEDRVT14_INV_0P5 U917 ( .A(n422), .X(n232) );
  SAEDRVT14_ND2_CDC_1 U918 ( .A1(n720), .A2(n232), .X(n569) );
  SAEDRVT14_ND2_CDC_1 U919 ( .A1(n233), .A2(n232), .X(n290) );
  SAEDRVT14_OAI22_0P5 U920 ( .A1(n881), .A2(n569), .B1(n882), .B2(n290), .X(
        n244) );
  SAEDRVT14_NR2_1 U921 ( .A1(n235), .A2(n234), .X(n238) );
  SAEDRVT14_AN3_0P5 U922 ( .A1(n238), .A2(n237), .A3(n236), .X(n693) );
  SAEDRVT14_BUF_S_0P75 U923 ( .A(n762), .X(n934) );
  SAEDRVT14_AN4_1 U924 ( .A1(n242), .A2(n241), .A3(n240), .A4(n239), .X(n691)
         );
  SAEDRVT14_OAI22_0P5 U925 ( .A1(n693), .A2(n934), .B1(n691), .B2(n6), .X(n243) );
  SAEDRVT14_OR4_1 U926 ( .A1(n246), .A2(n245), .A3(n244), .A4(n243), .X(n251)
         );
  SAEDRVT14_AO221_0P5 U927 ( .A1(n602), .A2(n248), .B1(a_i[8]), .B2(n247), .C(
        b_i[8]), .X(n249) );
  SAEDRVT14_INV_0P5 U928 ( .A(n249), .X(n250) );
  SAEDRVT14_OAI21_0P5 U929 ( .A1(n253), .A2(n8), .B(n1014), .X(n254) );
  SAEDRVT14_AOI21_0P5 U930 ( .A1(n441), .A2(n255), .B(n254), .X(n276) );
  SAEDRVT14_INV_0P5 U931 ( .A(b_i[9]), .X(n256) );
  SAEDRVT14_AOI21_0P5 U932 ( .A1(n558), .A2(n257), .B(n256), .X(n282) );
  SAEDRVT14_OAI22_0P5 U933 ( .A1(n744), .A2(n59), .B1(n743), .B2(n352), .X(
        n258) );
  SAEDRVT14_AOI21_0P5 U934 ( .A1(n720), .A2(n259), .B(n258), .X(n907) );
  SAEDRVT14_OAI22_0P5 U935 ( .A1(n907), .A2(n566), .B1(n1016), .B2(n278), .X(
        n275) );
  SAEDRVT14_NR2_1 U936 ( .A1(n641), .A2(n384), .X(n855) );
  SAEDRVT14_ND2_CDC_1 U937 ( .A1(a_i[24]), .A2(n397), .X(n968) );
  SAEDRVT14_ND2_CDC_1 U938 ( .A1(n968), .A2(n260), .X(n261) );
  SAEDRVT14_OR3_0P5 U939 ( .A1(n855), .A2(n262), .A3(n261), .X(n331) );
  SAEDRVT14_INV_0P5 U940 ( .A(n331), .X(n741) );
  SAEDRVT14_NR2_1 U941 ( .A1(n777), .A2(n384), .X(n787) );
  SAEDRVT14_NR2_1 U942 ( .A1(n823), .A2(n44), .X(n854) );
  SAEDRVT14_NR4_0P75 U943 ( .A1(n787), .A2(n854), .A3(n264), .A4(n263), .X(
        n742) );
  SAEDRVT14_OAI22_0P5 U944 ( .A1(n741), .A2(n770), .B1(n742), .B2(n766), .X(
        n274) );
  SAEDRVT14_ND2_CDC_1 U945 ( .A1(a_i[28]), .A2(n397), .X(n991) );
  SAEDRVT14_ND2_CDC_1 U946 ( .A1(a_i[26]), .A2(n682), .X(n967) );
  SAEDRVT14_ND2_CDC_1 U947 ( .A1(a_i[27]), .A2(n2), .X(n266) );
  SAEDRVT14_AN4_1 U948 ( .A1(n991), .A2(n967), .A3(n266), .A4(n265), .X(n909)
         );
  SAEDRVT14_OAI22_0P5 U949 ( .A1(n909), .A2(n569), .B1(n913), .B2(n290), .X(
        n273) );
  SAEDRVT14_NR2_1 U950 ( .A1(n728), .A2(n44), .X(n786) );
  SAEDRVT14_NR2_1 U951 ( .A1(n786), .A2(n267), .X(n269) );
  SAEDRVT14_ND2_CDC_1 U952 ( .A1(a_i[14]), .A2(n682), .X(n561) );
  SAEDRVT14_AN3_0P5 U953 ( .A1(n269), .A2(n561), .A3(n268), .X(n513) );
  SAEDRVT14_ND2_CDC_1 U954 ( .A1(a_i[10]), .A2(n682), .X(n423) );
  SAEDRVT14_ND2_CDC_1 U955 ( .A1(a_i[12]), .A2(n397), .X(n560) );
  SAEDRVT14_AN4_1 U956 ( .A1(n423), .A2(n560), .A3(n271), .A4(n270), .X(n517)
         );
  SAEDRVT14_OAI22_0P5 U957 ( .A1(n513), .A2(n934), .B1(n517), .B2(n11), .X(
        n272) );
  SAEDRVT14_OR4_1 U958 ( .A1(n275), .A2(n274), .A3(n273), .A4(n272), .X(n281)
         );
  SAEDRVT14_AO221_0P5 U959 ( .A1(n278), .A2(n277), .B1(a_i[9]), .B2(n276), .C(
        b_i[9]), .X(n279) );
  SAEDRVT14_INV_0P5 U960 ( .A(n279), .X(n280) );
  SAEDRVT14_OR3_0P5 U961 ( .A1(n282), .A2(n281), .A3(n280), .X(res_o[9]) );
  SAEDRVT14_AOI22_0P5 U962 ( .A1(n9), .A2(n284), .B1(n944), .B2(n283), .X(n296) );
  SAEDRVT14_OAI22_0P5 U963 ( .A1(n284), .A2(n941), .B1(n1023), .B2(n283), .X(
        n285) );
  SAEDRVT14_NR2_1 U964 ( .A1(n7), .A2(n285), .X(n295) );
  SAEDRVT14_AOI21_0P5 U965 ( .A1(n962), .A2(n287), .B(n286), .X(n300) );
  SAEDRVT14_OAI22_0P5 U966 ( .A1(n769), .A2(n59), .B1(n767), .B2(n352), .X(
        n288) );
  SAEDRVT14_AOI21_0P5 U967 ( .A1(n720), .A2(n289), .B(n288), .X(n936) );
  SAEDRVT14_OAI22_0P5 U968 ( .A1(n936), .A2(n566), .B1(n1016), .B2(n608), .X(
        n294) );
  SAEDRVT14_OAI22_0P5 U969 ( .A1(n763), .A2(n770), .B1(n765), .B2(n766), .X(
        n293) );
  SAEDRVT14_OAI22_0P5 U970 ( .A1(n933), .A2(n569), .B1(n935), .B2(n290), .X(
        n292) );
  SAEDRVT14_INV_0P5 U971 ( .A(n543), .X(n308) );
  SAEDRVT14_OAI22_0P5 U972 ( .A1(n308), .A2(n762), .B1(n310), .B2(n10), .X(
        n291) );
  SAEDRVT14_OR4_1 U973 ( .A1(n294), .A2(n293), .A3(n292), .A4(n291), .X(n299)
         );
  SAEDRVT14_AO221_0P5 U974 ( .A1(n608), .A2(n296), .B1(a_i[10]), .B2(n295), 
        .C(b_i[10]), .X(n297) );
  SAEDRVT14_INV_0P5 U975 ( .A(n297), .X(n298) );
  SAEDRVT14_OR3_0P5 U976 ( .A1(n300), .A2(n299), .A3(n298), .X(res_o[10]) );
  SAEDRVT14_OAI21_0P5 U977 ( .A1(n316), .A2(n734), .B(n301), .X(n306) );
  SAEDRVT14_OAI22_0P5 U978 ( .A1(n332), .A2(n306), .B1(n596), .B2(n960), .X(
        n302) );
  SAEDRVT14_OAI22_0P5 U979 ( .A1(n935), .A2(n59), .B1(n763), .B2(n47), .X(n303) );
  SAEDRVT14_OA21B_1 U980 ( .A1(n352), .A2(n933), .B(n303), .X(n305) );
  SAEDRVT14_OAI22_0P5 U981 ( .A1(n305), .A2(n422), .B1(n566), .B2(n304), .X(
        n324) );
  SAEDRVT14_INV_0P5 U982 ( .A(n306), .X(n315) );
  SAEDRVT14_ND2_CDC_1 U983 ( .A1(n332), .A2(n307), .X(n314) );
  SAEDRVT14_OAI22_0P5 U984 ( .A1(n765), .A2(n770), .B1(n308), .B2(n766), .X(
        n312) );
  SAEDRVT14_OAI22_0P5 U985 ( .A1(n310), .A2(n934), .B1(n309), .B2(n10), .X(
        n311) );
  SAEDRVT14_OAI21_0P5 U986 ( .A1(n315), .A2(n314), .B(n313), .X(n323) );
  SAEDRVT14_INV_0P5 U987 ( .A(n316), .X(n317) );
  SAEDRVT14_OAI22_0P5 U988 ( .A1(n318), .A2(n1023), .B1(n1022), .B2(n317), .X(
        n319) );
  SAEDRVT14_AOI21_0P5 U989 ( .A1(b_i[6]), .A2(n319), .B(n869), .X(n321) );
  SAEDRVT14_ND2_CDC_1 U990 ( .A1(n319), .A2(n596), .X(n320) );
  SAEDRVT14_OAI22_0P5 U991 ( .A1(n596), .A2(n321), .B1(b_i[6]), .B2(n320), .X(
        n322) );
  SAEDRVT14_OR4_1 U992 ( .A1(n325), .A2(n324), .A3(n323), .A4(n322), .X(
        res_o[6]) );
  SAEDRVT14_AOI21_0P5 U993 ( .A1(n9), .A2(n340), .B(n7), .X(n326) );
  SAEDRVT14_OAI21_0P5 U994 ( .A1(n8), .A2(n327), .B(n326), .X(n337) );
  SAEDRVT14_OAI22_0P5 U995 ( .A1(a_i[5]), .A2(n337), .B1(n345), .B2(n960), .X(
        n329) );
  SAEDRVT14_INV_0P5 U996 ( .A(b_i[5]), .X(n328) );
  SAEDRVT14_AOI21_0P5 U997 ( .A1(n558), .A2(n329), .B(n328), .X(n349) );
  SAEDRVT14_OAI22_0P5 U998 ( .A1(n913), .A2(n59), .B1(n909), .B2(n352), .X(
        n330) );
  SAEDRVT14_AO221_0P5 U999 ( .A1(n1002), .A2(n744), .B1(n421), .B2(n743), .C(
        n496), .X(n829) );
  SAEDRVT14_OAI22_0P5 U1000 ( .A1(n830), .A2(n422), .B1(n566), .B2(n829), .X(
        n348) );
  SAEDRVT14_ND2_CDC_1 U1001 ( .A1(n332), .A2(n682), .X(n399) );
  SAEDRVT14_ND2_CDC_1 U1002 ( .A1(a_i[8]), .A2(n397), .X(n425) );
  SAEDRVT14_ND2_CDC_1 U1003 ( .A1(a_i[5]), .A2(n391), .X(n334) );
  SAEDRVT14_AN4_1 U1004 ( .A1(n399), .A2(n425), .A3(n334), .A4(n333), .X(n515)
         );
  SAEDRVT14_OAI22_0P5 U1005 ( .A1(n517), .A2(n934), .B1(n515), .B2(n6), .X(
        n335) );
  SAEDRVT14_NR2_1 U1006 ( .A1(n336), .A2(n335), .X(n339) );
  SAEDRVT14_ND2_CDC_1 U1007 ( .A1(n601), .A2(n337), .X(n338) );
  SAEDRVT14_ND2_CDC_1 U1008 ( .A1(n339), .A2(n338), .X(n347) );
  SAEDRVT14_OAI22_0P5 U1009 ( .A1(n341), .A2(n1023), .B1(n1022), .B2(n340), 
        .X(n342) );
  SAEDRVT14_AOI21_0P5 U1010 ( .A1(b_i[5]), .A2(n342), .B(n869), .X(n344) );
  SAEDRVT14_ND2_CDC_1 U1011 ( .A1(n342), .A2(n345), .X(n343) );
  SAEDRVT14_OAI22_0P5 U1012 ( .A1(n345), .A2(n344), .B1(b_i[5]), .B2(n343), 
        .X(n346) );
  SAEDRVT14_OR4_1 U1013 ( .A1(n349), .A2(n348), .A3(n347), .A4(n346), .X(
        res_o[5]) );
  SAEDRVT14_OAI21_0P5 U1014 ( .A1(n366), .A2(n734), .B(n350), .X(n356) );
  SAEDRVT14_OAI22_0P5 U1015 ( .A1(a_i[4]), .A2(n356), .B1(n590), .B2(n960), 
        .X(n351) );
  SAEDRVT14_OAI22_0P5 U1016 ( .A1(n882), .A2(n59), .B1(n881), .B2(n352), .X(
        n353) );
  SAEDRVT14_AOI21_0P5 U1017 ( .A1(n720), .A2(n354), .B(n353), .X(n809) );
  SAEDRVT14_ND2_CDC_1 U1018 ( .A1(n355), .A2(n498), .X(n808) );
  SAEDRVT14_OAI22_0P5 U1019 ( .A1(n809), .A2(n422), .B1(n566), .B2(n808), .X(
        n374) );
  SAEDRVT14_INV_0P5 U1020 ( .A(n356), .X(n365) );
  SAEDRVT14_ND2_CDC_1 U1021 ( .A1(a_i[4]), .A2(n1005), .X(n364) );
  SAEDRVT14_ND2_CDC_1 U1022 ( .A1(a_i[4]), .A2(n391), .X(n358) );
  SAEDRVT14_AN4_1 U1023 ( .A1(n360), .A2(n359), .A3(n358), .A4(n357), .X(n690)
         );
  SAEDRVT14_OAI22_0P5 U1024 ( .A1(n691), .A2(n934), .B1(n690), .B2(n11), .X(
        n361) );
  SAEDRVT14_NR2_1 U1025 ( .A1(n362), .A2(n361), .X(n363) );
  SAEDRVT14_OAI21_0P5 U1026 ( .A1(n365), .A2(n364), .B(n363), .X(n373) );
  SAEDRVT14_INV_0P5 U1027 ( .A(n366), .X(n367) );
  SAEDRVT14_OAI22_0P5 U1028 ( .A1(n368), .A2(n1023), .B1(n1022), .B2(n367), 
        .X(n369) );
  SAEDRVT14_AOI21_0P5 U1029 ( .A1(n687), .A2(n369), .B(n869), .X(n371) );
  SAEDRVT14_ND2_CDC_1 U1030 ( .A1(n369), .A2(n590), .X(n370) );
  SAEDRVT14_OAI22_0P5 U1031 ( .A1(n590), .A2(n371), .B1(n687), .B2(n370), .X(
        n372) );
  SAEDRVT14_OR4_1 U1032 ( .A1(n375), .A2(n374), .A3(n373), .A4(n372), .X(
        res_o[4]) );
  SAEDRVT14_OAI21_0P5 U1033 ( .A1(n376), .A2(n8), .B(n1014), .X(n377) );
  SAEDRVT14_AOI21_0P5 U1034 ( .A1(n9), .A2(n378), .B(n377), .X(n407) );
  SAEDRVT14_INV_0P5 U1035 ( .A(b_i[7]), .X(n379) );
  SAEDRVT14_AOI21_0P5 U1036 ( .A1(n558), .A2(n380), .B(n379), .X(n415) );
  SAEDRVT14_NR2_1 U1037 ( .A1(n873), .A2(n1019), .X(n856) );
  SAEDRVT14_NR2_1 U1038 ( .A1(n946), .A2(n44), .X(n383) );
  SAEDRVT14_ND2_CDC_1 U1039 ( .A1(n969), .A2(n381), .X(n382) );
  SAEDRVT14_NR2_1 U1040 ( .A1(n656), .A2(n384), .X(n385) );
  SAEDRVT14_AOI21_0P5 U1041 ( .A1(n397), .A2(a_i[30]), .B(n385), .X(n386) );
  SAEDRVT14_ND2_CDC_1 U1042 ( .A1(a_i[29]), .A2(n2), .X(n993) );
  SAEDRVT14_ND2_CDC_1 U1043 ( .A1(a_i[27]), .A2(n387), .X(n970) );
  SAEDRVT14_AN3_0P5 U1044 ( .A1(n386), .A2(n993), .A3(n970), .X(n570) );
  SAEDRVT14_ND2_CDC_1 U1045 ( .A1(n1034), .A2(n387), .X(n994) );
  SAEDRVT14_OAI22_0P5 U1046 ( .A1(n570), .A2(n352), .B1(n59), .B2(n994), .X(
        n388) );
  SAEDRVT14_AOI21_0P5 U1047 ( .A1(n720), .A2(n428), .B(n388), .X(n860) );
  SAEDRVT14_OAI22_0P5 U1048 ( .A1(n860), .A2(n422), .B1(n1016), .B2(n410), .X(
        n414) );
  SAEDRVT14_ND2_CDC_1 U1049 ( .A1(n408), .A2(n391), .X(n398) );
  SAEDRVT14_AN4_1 U1050 ( .A1(n398), .A2(n424), .A3(n390), .A4(n389), .X(n483)
         );
  SAEDRVT14_ND2_CDC_1 U1051 ( .A1(a_i[11]), .A2(n391), .X(n426) );
  SAEDRVT14_ND2_CDC_1 U1052 ( .A1(a_i[13]), .A2(n3), .X(n562) );
  SAEDRVT14_AN4_1 U1053 ( .A1(n426), .A2(n562), .A3(n393), .A4(n392), .X(n486)
         );
  SAEDRVT14_OAI22_0P5 U1054 ( .A1(n15), .A2(n1019), .B1(n586), .B2(n507), .X(
        n396) );
  SAEDRVT14_OAI22_0P5 U1055 ( .A1(n394), .A2(n44), .B1(n16), .B2(n45), .X(n395) );
  SAEDRVT14_NR2_1 U1056 ( .A1(n396), .A2(n395), .X(n785) );
  SAEDRVT14_ND2_CDC_1 U1057 ( .A1(a_i[4]), .A2(n397), .X(n510) );
  SAEDRVT14_AN4_1 U1058 ( .A1(n510), .A2(n478), .A3(n399), .A4(n398), .X(n790)
         );
  SAEDRVT14_OAI22_0P5 U1059 ( .A1(n486), .A2(n934), .B1(n566), .B2(n859), .X(
        n405) );
  SAEDRVT14_NR2_1 U1060 ( .A1(n802), .A2(n1019), .X(n789) );
  SAEDRVT14_NR2_1 U1061 ( .A1(n844), .A2(n45), .X(n857) );
  SAEDRVT14_NR4_0P75 U1062 ( .A1(n789), .A2(n857), .A3(n401), .A4(n400), .X(
        n567) );
  SAEDRVT14_NR2_1 U1063 ( .A1(n751), .A2(n45), .X(n788) );
  SAEDRVT14_OR4_1 U1064 ( .A1(n559), .A2(n788), .A3(n403), .A4(n402), .X(n573)
         );
  SAEDRVT14_INV_0P5 U1065 ( .A(n573), .X(n429) );
  SAEDRVT14_NR2_1 U1066 ( .A1(n405), .A2(n404), .X(n406) );
  SAEDRVT14_AO221_0P5 U1067 ( .A1(n410), .A2(n409), .B1(n408), .B2(n407), .C(
        b_i[7]), .X(n411) );
  SAEDRVT14_INV_0P5 U1068 ( .A(n411), .X(n412) );
  SAEDRVT14_OR4_1 U1069 ( .A1(n415), .A2(n414), .A3(n413), .A4(n412), .X(
        res_o[7]) );
  SAEDRVT14_OAI21_0P5 U1070 ( .A1(n416), .A2(n8), .B(n1014), .X(n417) );
  SAEDRVT14_AOI21_0P5 U1071 ( .A1(n441), .A2(n418), .B(n417), .X(n433) );
  SAEDRVT14_INV_0P5 U1072 ( .A(b_i[11]), .X(n419) );
  SAEDRVT14_OAI22_0P5 U1073 ( .A1(n1002), .A2(n570), .B1(n421), .B2(n994), .X(
        n482) );
  SAEDRVT14_ND2_CDC_1 U1074 ( .A1(n498), .A2(n482), .X(n963) );
  SAEDRVT14_OAI22_0P5 U1075 ( .A1(n1016), .A2(n435), .B1(n963), .B2(n422), .X(
        n439) );
  SAEDRVT14_AN4_1 U1076 ( .A1(n426), .A2(n425), .A3(n424), .A4(n423), .X(n866)
         );
  SAEDRVT14_OAI22_0P5 U1077 ( .A1(n790), .A2(n352), .B1(n785), .B2(n59), .X(
        n427) );
  SAEDRVT14_OAI22_0P5 U1078 ( .A1(n966), .A2(n566), .B1(n567), .B2(n766), .X(
        n431) );
  SAEDRVT14_INV_0P5 U1079 ( .A(n428), .X(n568) );
  SAEDRVT14_OAI22_0P5 U1080 ( .A1(n568), .A2(n770), .B1(n429), .B2(n934), .X(
        n430) );
  SAEDRVT14_NR2_1 U1081 ( .A1(n431), .A2(n430), .X(n432) );
  SAEDRVT14_OAI21_0P5 U1082 ( .A1(n486), .A2(n10), .B(n432), .X(n438) );
  SAEDRVT14_AO221_0P5 U1083 ( .A1(n435), .A2(n434), .B1(a_i[11]), .B2(n433), 
        .C(b_i[11]), .X(n436) );
  SAEDRVT14_INV_0P5 U1084 ( .A(n436), .X(n437) );
  SAEDRVT14_OR4_1 U1085 ( .A1(n440), .A2(n439), .A3(n438), .A4(n437), .X(
        res_o[11]) );
  SAEDRVT14_OAI22_0P5 U1086 ( .A1(n443), .A2(n941), .B1(n1023), .B2(n442), .X(
        n444) );
  SAEDRVT14_NR2_1 U1087 ( .A1(n7), .A2(n444), .X(n451) );
  SAEDRVT14_AOI21_0P5 U1088 ( .A1(n1025), .A2(n446), .B(n445), .X(n457) );
  SAEDRVT14_OAI22_0P5 U1089 ( .A1(n716), .A2(n766), .B1(n1016), .B2(n614), .X(
        n456) );
  SAEDRVT14_OAI22_0P5 U1090 ( .A1(n882), .A2(n569), .B1(n717), .B2(n762), .X(
        n448) );
  SAEDRVT14_NR2_1 U1091 ( .A1(n448), .A2(n447), .X(n449) );
  SAEDRVT14_OAI21_0P5 U1092 ( .A1(n450), .A2(n566), .B(n449), .X(n455) );
  SAEDRVT14_AO221_0P5 U1093 ( .A1(n614), .A2(n452), .B1(a_i[12]), .B2(n451), 
        .C(b_i[12]), .X(n453) );
  SAEDRVT14_INV_0P5 U1094 ( .A(n453), .X(n454) );
  SAEDRVT14_OR4_1 U1095 ( .A1(n457), .A2(n456), .A3(n455), .A4(n454), .X(
        res_o[12]) );
  SAEDRVT14_OAI21_0P5 U1096 ( .A1(n458), .A2(n8), .B(n1014), .X(n459) );
  SAEDRVT14_AOI21_0P5 U1097 ( .A1(n9), .A2(n460), .B(n459), .X(n468) );
  SAEDRVT14_INV_0P5 U1098 ( .A(b_i[13]), .X(n461) );
  SAEDRVT14_AOI21_0P5 U1099 ( .A1(n558), .A2(n462), .B(n461), .X(n475) );
  SAEDRVT14_INV_0P5 U1100 ( .A(n463), .X(n464) );
  SAEDRVT14_OAI22_0P5 U1101 ( .A1(n464), .A2(n566), .B1(n1016), .B2(n470), .X(
        n474) );
  SAEDRVT14_OAI22_0P5 U1102 ( .A1(n741), .A2(n766), .B1(n742), .B2(n934), .X(
        n466) );
  SAEDRVT14_OAI22_0P5 U1103 ( .A1(n909), .A2(n770), .B1(n913), .B2(n569), .X(
        n465) );
  SAEDRVT14_NR2_1 U1104 ( .A1(n466), .A2(n465), .X(n467) );
  SAEDRVT14_OAI21_0P5 U1105 ( .A1(n513), .A2(n6), .B(n467), .X(n473) );
  SAEDRVT14_AO221_0P5 U1106 ( .A1(n470), .A2(n469), .B1(a_i[13]), .B2(n468), 
        .C(b_i[13]), .X(n471) );
  SAEDRVT14_INV_0P5 U1107 ( .A(n471), .X(n472) );
  SAEDRVT14_OR4_1 U1108 ( .A1(n475), .A2(n474), .A3(n473), .A4(n472), .X(
        res_o[13]) );
  SAEDRVT14_OAI22_0P5 U1109 ( .A1(n590), .A2(n507), .B1(n15), .B2(n1019), .X(
        n476) );
  SAEDRVT14_AN2B_MM_1 U1110 ( .B(n477), .A(n476), .X(n479) );
  SAEDRVT14_AOI21_0P5 U1111 ( .A1(n479), .A2(n478), .B(n700), .X(n480) );
  SAEDRVT14_AOI21_0P5 U1112 ( .A1(n520), .A2(n573), .B(n480), .X(n488) );
  SAEDRVT14_OAI22_0P5 U1113 ( .A1(n568), .A2(n352), .B1(n567), .B2(n47), .X(
        n481) );
  SAEDRVT14_AOI21_0P5 U1114 ( .A1(n496), .A2(n482), .B(n481), .X(n783) );
  SAEDRVT14_OAI22_0P5 U1115 ( .A1(n783), .A2(n484), .B1(n483), .B2(n514), .X(
        n485) );
  SAEDRVT14_OA21B_1 U1116 ( .A1(n516), .A2(n486), .B(n485), .X(n487) );
  SAEDRVT14_AOI21_0P5 U1117 ( .A1(n488), .A2(n487), .B(n521), .X(n503) );
  SAEDRVT14_OAI22_0P5 U1118 ( .A1(n489), .A2(n1023), .B1(n1022), .B2(n490), 
        .X(n495) );
  SAEDRVT14_AOI21_0P5 U1119 ( .A1(n9), .A2(n490), .B(n12), .X(n491) );
  SAEDRVT14_OA221_U_0P5 U1120 ( .A1(a_i[3]), .A2(n495), .B1(n15), .B2(n493), 
        .C(n498), .X(n501) );
  SAEDRVT14_INV_0P5 U1121 ( .A(n493), .X(n494) );
  SAEDRVT14_OA221_U_0P5 U1122 ( .A1(a_i[3]), .A2(n494), .B1(n15), .B2(n1017), 
        .C(n1025), .X(n499) );
  SAEDRVT14_AOI21_0P5 U1123 ( .A1(n496), .A2(n495), .B(n869), .X(n497) );
  SAEDRVT14_OAI22_0P5 U1124 ( .A1(n499), .A2(n498), .B1(n497), .B2(n15), .X(
        n500) );
  SAEDRVT14_OR4_1 U1125 ( .A1(n503), .A2(n502), .A3(n501), .A4(n500), .X(
        res_o[3]) );
  SAEDRVT14_OAI22_0P5 U1126 ( .A1(n741), .A2(n352), .B1(n742), .B2(n47), .X(
        n506) );
  SAEDRVT14_OAI22_0P5 U1127 ( .A1(n913), .A2(n692), .B1(n909), .B2(n59), .X(
        n505) );
  SAEDRVT14_OAI21_0P5 U1128 ( .A1(n506), .A2(n505), .B(n504), .X(n512) );
  SAEDRVT14_OAI22_0P5 U1129 ( .A1(n15), .A2(n45), .B1(n586), .B2(n507), .X(
        n508) );
  SAEDRVT14_NR2_1 U1130 ( .A1(n509), .A2(n508), .X(n511) );
  SAEDRVT14_AO32_U_0P5 U1131 ( .A1(n512), .A2(n511), .A3(n510), .B1(n512), 
        .B2(n700), .X(n523) );
  SAEDRVT14_INV_0P5 U1132 ( .A(n513), .X(n519) );
  SAEDRVT14_OAI22_0P5 U1133 ( .A1(n517), .A2(n516), .B1(n515), .B2(n514), .X(
        n518) );
  SAEDRVT14_AOI21_0P5 U1134 ( .A1(n520), .A2(n519), .B(n518), .X(n522) );
  SAEDRVT14_AOI21_0P5 U1135 ( .A1(n523), .A2(n522), .B(n521), .X(n533) );
  SAEDRVT14_OAI22_0P5 U1136 ( .A1(n734), .A2(n524), .B1(n1023), .B2(n669), .X(
        n529) );
  SAEDRVT14_OA21_1 U1137 ( .A1(n672), .A2(n734), .B(n525), .X(n527) );
  SAEDRVT14_OAI21_0P5 U1138 ( .A1(n527), .A2(b_i[1]), .B(n1016), .X(n528) );
  SAEDRVT14_AOI21_0P5 U1139 ( .A1(b_i[1]), .A2(n529), .B(n528), .X(n530) );
  SAEDRVT14_OAI22_0P5 U1140 ( .A1(n744), .A2(n879), .B1(n530), .B2(n16), .X(
        n531) );
  SAEDRVT14_OR3_0P5 U1141 ( .A1(n533), .A2(n532), .A3(n531), .X(res_o[1]) );
  SAEDRVT14_AOI22_0P5 U1142 ( .A1(n9), .A2(n535), .B1(n944), .B2(n534), .X(
        n547) );
  SAEDRVT14_NR2_1 U1143 ( .A1(n13), .A2(n536), .X(n546) );
  SAEDRVT14_AOI21_0P5 U1144 ( .A1(n558), .A2(n538), .B(n537), .X(n552) );
  SAEDRVT14_INV_0P5 U1145 ( .A(n539), .X(n540) );
  SAEDRVT14_OAI22_0P5 U1146 ( .A1(n540), .A2(n566), .B1(n1016), .B2(n620), .X(
        n551) );
  SAEDRVT14_OAI22_0P5 U1147 ( .A1(n763), .A2(n766), .B1(n765), .B2(n762), .X(
        n542) );
  SAEDRVT14_OAI22_0P5 U1148 ( .A1(n933), .A2(n770), .B1(n935), .B2(n569), .X(
        n541) );
  SAEDRVT14_NR2_1 U1149 ( .A1(n542), .A2(n541), .X(n545) );
  SAEDRVT14_ND2_CDC_1 U1150 ( .A1(n574), .A2(n543), .X(n544) );
  SAEDRVT14_ND2_CDC_1 U1151 ( .A1(n545), .A2(n544), .X(n550) );
  SAEDRVT14_AO221_0P5 U1152 ( .A1(n620), .A2(n547), .B1(a_i[14]), .B2(n546), 
        .C(b_i[14]), .X(n548) );
  SAEDRVT14_INV_0P5 U1153 ( .A(n548), .X(n549) );
  SAEDRVT14_OR4_1 U1154 ( .A1(n552), .A2(n551), .A3(n550), .A4(n549), .X(
        res_o[14]) );
  SAEDRVT14_OAI21_0P5 U1155 ( .A1(n553), .A2(n8), .B(n1014), .X(n554) );
  SAEDRVT14_AOI21_0P5 U1156 ( .A1(n9), .A2(n555), .B(n554), .X(n577) );
  SAEDRVT14_INV_0P5 U1157 ( .A(b_i[15]), .X(n556) );
  SAEDRVT14_INV_0P5 U1158 ( .A(n559), .X(n563) );
  SAEDRVT14_AN4_1 U1159 ( .A1(n563), .A2(n562), .A3(n561), .A4(n560), .X(n977)
         );
  SAEDRVT14_OAI22_0P5 U1160 ( .A1(n866), .A2(n352), .B1(n977), .B2(n47), .X(
        n565) );
  SAEDRVT14_OAI22_0P5 U1161 ( .A1(n785), .A2(n692), .B1(n790), .B2(n59), .X(
        n564) );
  SAEDRVT14_NR2_MM_1 U1162 ( .A1(n565), .A2(n564), .X(n1006) );
  SAEDRVT14_OAI22_0P5 U1163 ( .A1(n1006), .A2(n566), .B1(n1016), .B2(n579), 
        .X(n583) );
  SAEDRVT14_OAI22_0P5 U1164 ( .A1(n568), .A2(n766), .B1(n567), .B2(n762), .X(
        n572) );
  SAEDRVT14_OAI22_0P5 U1165 ( .A1(n570), .A2(n770), .B1(n994), .B2(n569), .X(
        n571) );
  SAEDRVT14_NR2_1 U1166 ( .A1(n572), .A2(n571), .X(n576) );
  SAEDRVT14_ND2_CDC_1 U1167 ( .A1(n574), .A2(n573), .X(n575) );
  SAEDRVT14_ND2_CDC_1 U1168 ( .A1(n576), .A2(n575), .X(n582) );
  SAEDRVT14_AO221_0P5 U1169 ( .A1(n579), .A2(n578), .B1(a_i[15]), .B2(n577), 
        .C(b_i[15]), .X(n580) );
  SAEDRVT14_INV_0P5 U1170 ( .A(n580), .X(n581) );
  SAEDRVT14_OR4_1 U1171 ( .A1(n584), .A2(n583), .A3(n582), .A4(n581), .X(
        res_o[15]) );
  SAEDRVT14_INV_S_1 U1172 ( .A(b_i[31]), .X(n1031) );
  SAEDRVT14_OAI21_0P5 U1173 ( .A1(n589), .A2(n588), .B(n587), .X(n591) );
  SAEDRVT14_OAI22_0P5 U1174 ( .A1(n592), .A2(n591), .B1(n687), .B2(n590), .X(
        n594) );
  SAEDRVT14_OAI21_0P5 U1175 ( .A1(n595), .A2(n594), .B(n593), .X(n597) );
  SAEDRVT14_OAI22_0P5 U1176 ( .A1(n598), .A2(n597), .B1(b_i[6]), .B2(n596), 
        .X(n600) );
  SAEDRVT14_OAI22_0P5 U1177 ( .A1(n604), .A2(n603), .B1(b_i[8]), .B2(n602), 
        .X(n606) );
  SAEDRVT14_OAI21_0P5 U1178 ( .A1(n607), .A2(n606), .B(n605), .X(n609) );
  SAEDRVT14_OAI22_0P5 U1179 ( .A1(n610), .A2(n609), .B1(b_i[10]), .B2(n608), 
        .X(n612) );
  SAEDRVT14_OAI21_0P5 U1180 ( .A1(n613), .A2(n612), .B(n611), .X(n615) );
  SAEDRVT14_OAI22_0P5 U1181 ( .A1(n616), .A2(n615), .B1(b_i[12]), .B2(n614), 
        .X(n618) );
  SAEDRVT14_OAI21_0P5 U1182 ( .A1(n619), .A2(n618), .B(n617), .X(n621) );
  SAEDRVT14_OAI22_0P5 U1183 ( .A1(n622), .A2(n621), .B1(b_i[14]), .B2(n620), 
        .X(n624) );
  SAEDRVT14_OAI21_0P5 U1184 ( .A1(n625), .A2(n624), .B(n623), .X(n626) );
  SAEDRVT14_OAI22_0P5 U1185 ( .A1(n627), .A2(n626), .B1(b_i[16]), .B2(n728), 
        .X(n629) );
  SAEDRVT14_OAI21_0P5 U1186 ( .A1(n630), .A2(n629), .B(n628), .X(n631) );
  SAEDRVT14_OAI22_0P5 U1187 ( .A1(n632), .A2(n631), .B1(b_i[18]), .B2(n777), 
        .X(n634) );
  SAEDRVT14_OAI21_0P5 U1188 ( .A1(n635), .A2(n634), .B(n633), .X(n636) );
  SAEDRVT14_OAI22_0P5 U1189 ( .A1(n637), .A2(n636), .B1(b_i[20]), .B2(n823), 
        .X(n639) );
  SAEDRVT14_OAI21_0P5 U1190 ( .A1(n640), .A2(n639), .B(n638), .X(n642) );
  SAEDRVT14_OAI22_0P5 U1191 ( .A1(n643), .A2(n642), .B1(b_i[22]), .B2(n641), 
        .X(n645) );
  SAEDRVT14_OAI21_0P5 U1192 ( .A1(n646), .A2(n645), .B(n644), .X(n647) );
  SAEDRVT14_ND2_CDC_1 U1193 ( .A1(a_i[24]), .A2(n895), .X(n898) );
  SAEDRVT14_OAI21_0P5 U1194 ( .A1(n648), .A2(n647), .B(n898), .X(n650) );
  SAEDRVT14_ND2_CDC_1 U1195 ( .A1(a_i[26]), .A2(n949), .X(n952) );
  SAEDRVT14_OAI21_0P5 U1196 ( .A1(n652), .A2(n651), .B(n952), .X(n654) );
  SAEDRVT14_OAI21_0P5 U1197 ( .A1(n655), .A2(n654), .B(n653), .X(n657) );
  SAEDRVT14_OAI22_0P5 U1198 ( .A1(n658), .A2(n657), .B1(b_i[28]), .B2(n656), 
        .X(n660) );
  SAEDRVT14_OA21B_1 U1199 ( .A1(n661), .A2(n660), .B(n659), .X(n664) );
  SAEDRVT14_OAI22_0P5 U1200 ( .A1(b_i[30]), .A2(n1011), .B1(n1010), .B2(n665), 
        .X(n673) );
  SAEDRVT14_OAI21_0P5 U1201 ( .A1(n1034), .A2(n1031), .B(n673), .X(n666) );
  SAEDRVT14_OAI21_0P5 U1202 ( .A1(b_i[31]), .A2(n674), .B(n666), .X(n710) );
  SAEDRVT14_INV_0P5 U1203 ( .A(op_i[0]), .X(n677) );
  SAEDRVT14_ND2_CDC_1 U1204 ( .A1(n667), .A2(n677), .X(n709) );
  SAEDRVT14_ND2_CDC_1 U1205 ( .A1(n668), .A2(n8), .X(n679) );
  SAEDRVT14_OAI22_0P5 U1206 ( .A1(n1025), .A2(n670), .B1(n1017), .B2(n669), 
        .X(n671) );
  SAEDRVT14_AOI21_0P5 U1207 ( .A1(n672), .A2(n679), .B(n671), .X(n707) );
  SAEDRVT14_OAI21_0P5 U1208 ( .A1(b_i[31]), .A2(n674), .B(n673), .X(n675) );
  SAEDRVT14_OAI21_0P5 U1209 ( .A1(n1034), .A2(n1031), .B(n675), .X(n678) );
  SAEDRVT14_OR4_1 U1210 ( .A1(op_i[2]), .A2(n678), .A3(n677), .A4(n676), .X(
        n706) );
  SAEDRVT14_INV_0P5 U1211 ( .A(n679), .X(n680) );
  SAEDRVT14_OAI22_0P5 U1212 ( .A1(b_i[0]), .A2(n680), .B1(n879), .B2(n1019), 
        .X(n681) );
  SAEDRVT14_OAI21_0P5 U1213 ( .A1(n869), .A2(n681), .B(a_i[0]), .X(n705) );
  SAEDRVT14_ND2_CDC_1 U1214 ( .A1(a_i[1]), .A2(n682), .X(n686) );
  SAEDRVT14_AN4_1 U1215 ( .A1(n686), .A2(n685), .A3(n721), .A4(n684), .X(n701)
         );
  SAEDRVT14_OA21_1 U1216 ( .A1(n692), .A2(n882), .B(n687), .X(n688) );
  SAEDRVT14_OAI22_0P5 U1217 ( .A1(n881), .A2(n59), .B1(n717), .B2(n47), .X(
        n696) );
  SAEDRVT14_OAI22_0P5 U1218 ( .A1(n691), .A2(n59), .B1(n690), .B2(n352), .X(
        n695) );
  SAEDRVT14_OAI21_0P5 U1219 ( .A1(n693), .A2(n692), .B(n1005), .X(n694) );
  SAEDRVT14_OAI22_0P5 U1220 ( .A1(n697), .A2(n696), .B1(n695), .B2(n694), .X(
        n698) );
  SAEDRVT14_OAI22_0P5 U1221 ( .A1(n701), .A2(n700), .B1(n699), .B2(n698), .X(
        n702) );
  SAEDRVT14_ND2_CDC_1 U1222 ( .A1(n703), .A2(n702), .X(n704) );
  SAEDRVT14_AN4_1 U1223 ( .A1(n707), .A2(n706), .A3(n705), .A4(n704), .X(n708)
         );
  SAEDRVT14_OAI21_0P5 U1224 ( .A1(n710), .A2(n709), .B(n708), .X(res_o[0]) );
  SAEDRVT14_NR2_1 U1225 ( .A1(n12), .A2(n713), .X(n726) );
  SAEDRVT14_AOI21_0P5 U1226 ( .A1(n1025), .A2(n715), .B(n714), .X(n733) );
  SAEDRVT14_INV_0P5 U1227 ( .A(n885), .X(n811) );
  SAEDRVT14_OAI22_0P5 U1228 ( .A1(n811), .A2(n879), .B1(n716), .B2(n762), .X(
        n732) );
  SAEDRVT14_OAI22_0P5 U1229 ( .A1(n881), .A2(n766), .B1(n717), .B2(n6), .X(
        n725) );
  SAEDRVT14_OAI22_0P5 U1230 ( .A1(n812), .A2(n911), .B1(n718), .B2(n66), .X(
        n724) );
  SAEDRVT14_OAI22_0P5 U1231 ( .A1(n887), .A2(n971), .B1(n1016), .B2(n728), .X(
        n723) );
  SAEDRVT14_ND2_CDC_1 U1232 ( .A1(n720), .A2(n719), .X(n784) );
  SAEDRVT14_OAI22_0P5 U1233 ( .A1(n882), .A2(n770), .B1(n721), .B2(n784), .X(
        n722) );
  SAEDRVT14_OR4_1 U1234 ( .A1(n725), .A2(n724), .A3(n723), .A4(n722), .X(n731)
         );
  SAEDRVT14_AO221_0P5 U1235 ( .A1(n728), .A2(n727), .B1(a_i[16]), .B2(n726), 
        .C(b_i[16]), .X(n729) );
  SAEDRVT14_INV_0P5 U1236 ( .A(n729), .X(n730) );
  SAEDRVT14_OR4_1 U1237 ( .A1(n733), .A2(n732), .A3(n731), .A4(n730), .X(
        res_o[16]) );
  SAEDRVT14_OAI21_0P5 U1238 ( .A1(n735), .A2(n8), .B(n1014), .X(n736) );
  SAEDRVT14_AOI21_0P5 U1239 ( .A1(n9), .A2(n737), .B(n736), .X(n749) );
  SAEDRVT14_INV_0P5 U1240 ( .A(b_i[17]), .X(n738) );
  SAEDRVT14_AOI21_0P5 U1241 ( .A1(n962), .A2(n739), .B(n738), .X(n756) );
  SAEDRVT14_INV_0P5 U1242 ( .A(n740), .X(n912) );
  SAEDRVT14_OAI22_0P5 U1243 ( .A1(n912), .A2(n879), .B1(n741), .B2(n762), .X(
        n755) );
  SAEDRVT14_OAI22_0P5 U1244 ( .A1(n909), .A2(n766), .B1(n742), .B2(n6), .X(
        n748) );
  SAEDRVT14_OAI22_0P5 U1245 ( .A1(n832), .A2(n911), .B1(n743), .B2(n66), .X(
        n747) );
  SAEDRVT14_OAI22_0P5 U1246 ( .A1(n917), .A2(n971), .B1(n1016), .B2(n751), .X(
        n746) );
  SAEDRVT14_OAI22_0P5 U1247 ( .A1(n913), .A2(n770), .B1(n744), .B2(n784), .X(
        n745) );
  SAEDRVT14_OR4_1 U1248 ( .A1(n748), .A2(n747), .A3(n746), .A4(n745), .X(n754)
         );
  SAEDRVT14_AO221_0P5 U1249 ( .A1(n751), .A2(n750), .B1(a_i[17]), .B2(n749), 
        .C(b_i[17]), .X(n752) );
  SAEDRVT14_INV_0P5 U1250 ( .A(n752), .X(n753) );
  SAEDRVT14_OR4_1 U1251 ( .A1(n756), .A2(n755), .A3(n754), .A4(n753), .X(
        res_o[17]) );
  SAEDRVT14_AOI22_0P5 U1252 ( .A1(n9), .A2(n758), .B1(n890), .B2(n757), .X(
        n776) );
  SAEDRVT14_OAI22_0P5 U1253 ( .A1(n758), .A2(n941), .B1(n1023), .B2(n757), .X(
        n759) );
  SAEDRVT14_NR2_1 U1254 ( .A1(n7), .A2(n759), .X(n775) );
  SAEDRVT14_AOI21_0P5 U1255 ( .A1(n1025), .A2(n761), .B(n760), .X(n782) );
  SAEDRVT14_OAI22_0P5 U1256 ( .A1(n764), .A2(n879), .B1(n763), .B2(n762), .X(
        n781) );
  SAEDRVT14_OAI22_0P5 U1257 ( .A1(n933), .A2(n766), .B1(n765), .B2(n6), .X(
        n774) );
  SAEDRVT14_OAI22_0P5 U1258 ( .A1(n768), .A2(n911), .B1(n767), .B2(n66), .X(
        n773) );
  SAEDRVT14_OAI22_0P5 U1259 ( .A1(n940), .A2(n971), .B1(n1016), .B2(n777), .X(
        n772) );
  SAEDRVT14_OAI22_0P5 U1260 ( .A1(n935), .A2(n770), .B1(n769), .B2(n784), .X(
        n771) );
  SAEDRVT14_OR4_1 U1261 ( .A1(n774), .A2(n773), .A3(n772), .A4(n771), .X(n780)
         );
  SAEDRVT14_AO221_0P5 U1262 ( .A1(n777), .A2(n776), .B1(a_i[18]), .B2(n775), 
        .C(b_i[18]), .X(n778) );
  SAEDRVT14_INV_0P5 U1263 ( .A(n778), .X(n779) );
  SAEDRVT14_OR4_1 U1264 ( .A1(n782), .A2(n781), .A3(n780), .A4(n779), .X(
        res_o[18]) );
  SAEDRVT14_OAI22_0P5 U1265 ( .A1(n785), .A2(n784), .B1(n783), .B2(n964), .X(
        n807) );
  SAEDRVT14_OR4_1 U1266 ( .A1(n789), .A2(n788), .A3(n787), .A4(n786), .X(n999)
         );
  SAEDRVT14_INV_0P5 U1267 ( .A(n999), .X(n858) );
  SAEDRVT14_OAI22_0P5 U1268 ( .A1(n858), .A2(n879), .B1(n977), .B2(n971), .X(
        n806) );
  SAEDRVT14_OAI22_0P5 U1269 ( .A1(n866), .A2(n911), .B1(n790), .B2(n66), .X(
        n805) );
  SAEDRVT14_OAI21_0P5 U1270 ( .A1(n791), .A2(n8), .B(n1014), .X(n792) );
  SAEDRVT14_AOI21_0P5 U1271 ( .A1(n9), .A2(n794), .B(n792), .X(n793) );
  SAEDRVT14_INV_0P5 U1272 ( .A(b_i[19]), .X(n798) );
  SAEDRVT14_OA221_U_0P5 U1273 ( .A1(b_i[19]), .A2(n793), .B1(n798), .B2(n1017), 
        .C(n1016), .X(n803) );
  SAEDRVT14_OAI21_0P5 U1274 ( .A1(a_i[19]), .A2(n793), .B(n1025), .X(n800) );
  SAEDRVT14_OAI22_0P5 U1275 ( .A1(n795), .A2(n8), .B1(n941), .B2(n794), .X(
        n796) );
  SAEDRVT14_OAI21_0P5 U1276 ( .A1(a_i[19]), .A2(n798), .B(n796), .X(n797) );
  SAEDRVT14_AOI21_0P5 U1277 ( .A1(a_i[19]), .A2(n798), .B(n797), .X(n799) );
  SAEDRVT14_AOI21_0P5 U1278 ( .A1(n800), .A2(b_i[19]), .B(n799), .X(n801) );
  SAEDRVT14_OAI21_0P5 U1279 ( .A1(n803), .A2(n802), .B(n801), .X(n804) );
  SAEDRVT14_OR4_1 U1280 ( .A1(n807), .A2(n806), .A3(n805), .A4(n804), .X(
        res_o[19]) );
  SAEDRVT14_OAI22_0P5 U1281 ( .A1(n809), .A2(n964), .B1(n965), .B2(n808), .X(
        n828) );
  SAEDRVT14_INV_0P5 U1282 ( .A(n810), .X(n878) );
  SAEDRVT14_OAI22_0P5 U1283 ( .A1(n878), .A2(n879), .B1(n811), .B2(n971), .X(
        n827) );
  SAEDRVT14_OAI22_0P5 U1284 ( .A1(n887), .A2(n911), .B1(n812), .B2(n66), .X(
        n826) );
  SAEDRVT14_OAI22_0P5 U1285 ( .A1(n815), .A2(n941), .B1(n1023), .B2(n816), .X(
        n813) );
  SAEDRVT14_NR2_1 U1286 ( .A1(n12), .A2(n813), .X(n814) );
  SAEDRVT14_OA221_U_0P5 U1287 ( .A1(b_i[20]), .A2(n814), .B1(n819), .B2(n1017), 
        .C(n1016), .X(n824) );
  SAEDRVT14_OAI21_0P5 U1288 ( .A1(a_i[20]), .A2(n814), .B(n1025), .X(n821) );
  SAEDRVT14_AO22_0P75 U1289 ( .A1(n816), .A2(n944), .B1(n9), .B2(n815), .X(
        n817) );
  SAEDRVT14_OAI21_0P5 U1290 ( .A1(a_i[20]), .A2(n819), .B(n817), .X(n818) );
  SAEDRVT14_AOI21_0P5 U1291 ( .A1(a_i[20]), .A2(n819), .B(n818), .X(n820) );
  SAEDRVT14_OR4_1 U1292 ( .A1(n828), .A2(n827), .A3(n826), .A4(n825), .X(
        res_o[20]) );
  SAEDRVT14_OAI22_0P5 U1293 ( .A1(n830), .A2(n964), .B1(n965), .B2(n829), .X(
        n849) );
  SAEDRVT14_INV_0P5 U1294 ( .A(n831), .X(n910) );
  SAEDRVT14_OAI22_0P5 U1295 ( .A1(n910), .A2(n879), .B1(n912), .B2(n971), .X(
        n848) );
  SAEDRVT14_OAI22_0P5 U1296 ( .A1(n917), .A2(n911), .B1(n832), .B2(n66), .X(
        n847) );
  SAEDRVT14_OAI21_0P5 U1297 ( .A1(n833), .A2(n8), .B(n1014), .X(n834) );
  SAEDRVT14_AOI21_0P5 U1298 ( .A1(n9), .A2(n836), .B(n834), .X(n835) );
  SAEDRVT14_INV_0P5 U1299 ( .A(b_i[21]), .X(n840) );
  SAEDRVT14_OA221_U_0P5 U1300 ( .A1(b_i[21]), .A2(n835), .B1(n840), .B2(n1017), 
        .C(n1016), .X(n845) );
  SAEDRVT14_OAI21_0P5 U1301 ( .A1(a_i[21]), .A2(n835), .B(n1025), .X(n842) );
  SAEDRVT14_OAI22_0P5 U1302 ( .A1(n837), .A2(n8), .B1(n1022), .B2(n836), .X(
        n838) );
  SAEDRVT14_OAI21_0P5 U1303 ( .A1(a_i[21]), .A2(n840), .B(n838), .X(n839) );
  SAEDRVT14_AOI21_0P5 U1304 ( .A1(a_i[21]), .A2(n840), .B(n839), .X(n841) );
  SAEDRVT14_AOI21_0P5 U1305 ( .A1(n842), .A2(b_i[21]), .B(n841), .X(n843) );
  SAEDRVT14_OAI21_0P5 U1306 ( .A1(n845), .A2(n844), .B(n843), .X(n846) );
  SAEDRVT14_AOI21_0P5 U1307 ( .A1(n9), .A2(n867), .B(n13), .X(n850) );
  SAEDRVT14_OAI21_0P5 U1308 ( .A1(n8), .A2(n851), .B(n850), .X(n862) );
  SAEDRVT14_OAI22_0P5 U1309 ( .A1(a_i[23]), .A2(n862), .B1(n873), .B2(n960), 
        .X(n853) );
  SAEDRVT14_INV_0P5 U1310 ( .A(b_i[23]), .X(n852) );
  SAEDRVT14_AOI21_0P5 U1311 ( .A1(n962), .A2(n853), .B(n852), .X(n877) );
  SAEDRVT14_OR4_1 U1312 ( .A1(n857), .A2(n856), .A3(n855), .A4(n854), .X(n1001) );
  SAEDRVT14_INV_0P5 U1313 ( .A(n1001), .X(n972) );
  SAEDRVT14_OAI22_0P5 U1314 ( .A1(n972), .A2(n879), .B1(n858), .B2(n971), .X(
        n876) );
  SAEDRVT14_OAI22_0P5 U1315 ( .A1(n860), .A2(n964), .B1(n965), .B2(n859), .X(
        n864) );
  SAEDRVT14_OAI22_0P5 U1316 ( .A1(n868), .A2(n8), .B1(n1022), .B2(n867), .X(
        n870) );
  SAEDRVT14_AOI21_0P5 U1317 ( .A1(b_i[23]), .A2(n870), .B(n869), .X(n872) );
  SAEDRVT14_ND2_CDC_1 U1318 ( .A1(n870), .A2(n873), .X(n871) );
  SAEDRVT14_OAI22_0P5 U1319 ( .A1(n873), .A2(n872), .B1(b_i[23]), .B2(n871), 
        .X(n874) );
  SAEDRVT14_OR4_1 U1320 ( .A1(n877), .A2(n876), .A3(n875), .A4(n874), .X(
        res_o[23]) );
  SAEDRVT14_OAI22_0P5 U1321 ( .A1(n880), .A2(n879), .B1(n878), .B2(n971), .X(
        n903) );
  SAEDRVT14_OAI22_0P5 U1322 ( .A1(n882), .A2(n934), .B1(n881), .B2(n11), .X(
        n902) );
  SAEDRVT14_INV_0P5 U1323 ( .A(n911), .X(n975) );
  SAEDRVT14_OAI22_0P5 U1324 ( .A1(n883), .A2(n965), .B1(n1016), .B2(n892), .X(
        n884) );
  SAEDRVT14_AOI21_0P5 U1325 ( .A1(n975), .A2(n885), .B(n884), .X(n886) );
  SAEDRVT14_OAI21_0P5 U1326 ( .A1(n887), .A2(n66), .B(n886), .X(n901) );
  SAEDRVT14_NR2_MM_1 U1327 ( .A1(n13), .A2(n888), .X(n899) );
  SAEDRVT14_ND2B_U_0P5 U1328 ( .A(n893), .B(n892), .X(n894) );
  SAEDRVT14_OAI21_0P5 U1329 ( .A1(n899), .A2(n898), .B(n897), .X(n900) );
  SAEDRVT14_OR4_1 U1330 ( .A1(n903), .A2(n902), .A3(n901), .A4(n900), .X(
        res_o[24]) );
  SAEDRVT14_AOI21_0P5 U1331 ( .A1(n9), .A2(n918), .B(n13), .X(n904) );
  SAEDRVT14_INV_0P5 U1332 ( .A(b_i[25]), .X(n921) );
  SAEDRVT14_AOI21_0P5 U1333 ( .A1(n962), .A2(n906), .B(n921), .X(n930) );
  SAEDRVT14_OAI22_0P5 U1334 ( .A1(n908), .A2(n879), .B1(n907), .B2(n965), .X(
        n929) );
  SAEDRVT14_OAI22_0P5 U1335 ( .A1(n910), .A2(n971), .B1(n909), .B2(n6), .X(
        n915) );
  SAEDRVT14_OAI22_0P5 U1336 ( .A1(n913), .A2(n934), .B1(n912), .B2(n911), .X(
        n914) );
  SAEDRVT14_NR2_1 U1337 ( .A1(n915), .A2(n914), .X(n916) );
  SAEDRVT14_OAI21_0P5 U1338 ( .A1(n917), .A2(n66), .B(n916), .X(n928) );
  SAEDRVT14_AO21B_0P5 U1339 ( .A1(n921), .A2(n920), .B(n1016), .X(n922) );
  SAEDRVT14_AOI21_0P5 U1340 ( .A1(b_i[25]), .A2(n923), .B(n922), .X(n925) );
  SAEDRVT14_OAI22_0P5 U1341 ( .A1(n932), .A2(n879), .B1(n931), .B2(n971), .X(
        n957) );
  SAEDRVT14_OAI22_0P5 U1342 ( .A1(n935), .A2(n934), .B1(n933), .B2(n6), .X(
        n956) );
  SAEDRVT14_OAI22_0P5 U1343 ( .A1(n936), .A2(n965), .B1(n1016), .B2(n946), .X(
        n937) );
  SAEDRVT14_AOI21_0P5 U1344 ( .A1(n975), .A2(n938), .B(n937), .X(n939) );
  SAEDRVT14_OAI21_0P5 U1345 ( .A1(n940), .A2(n66), .B(n939), .X(n955) );
  SAEDRVT14_ND2B_U_0P5 U1346 ( .A(n947), .B(n946), .X(n948) );
  SAEDRVT14_AOI21_0P5 U1347 ( .A1(n9), .A2(n978), .B(n12), .X(n958) );
  SAEDRVT14_OAI22_1 U1348 ( .A1(a_i[27]), .A2(n980), .B1(n986), .B2(n960), .X(
        n961) );
  SAEDRVT14_AOI21_0P5 U1349 ( .A1(n962), .A2(n961), .B(n981), .X(n990) );
  SAEDRVT14_OAI22_0P5 U1350 ( .A1(n966), .A2(n965), .B1(n964), .B2(n963), .X(
        n989) );
  SAEDRVT14_AN4_1 U1351 ( .A1(n970), .A2(n969), .A3(n968), .A4(n967), .X(n996)
         );
  SAEDRVT14_OAI22_0P5 U1352 ( .A1(n996), .A2(n879), .B1(n972), .B2(n971), .X(
        n974) );
  SAEDRVT14_AOI21_0P5 U1353 ( .A1(n975), .A2(n999), .B(n974), .X(n976) );
  SAEDRVT14_AO21B_0P5 U1354 ( .A1(n981), .A2(n980), .B(n1016), .X(n982) );
  SAEDRVT14_AN4_1 U1355 ( .A1(n994), .A2(n993), .A3(n992), .A4(n991), .X(n998)
         );
  SAEDRVT14_OAI22_1 U1356 ( .A1(b_i[30]), .A2(n1011), .B1(n1010), .B2(n1009), 
        .X(n1021) );
  SAEDRVT14_AO21B_0P5 U1357 ( .A1(a_i[30]), .A2(n1013), .B(n1012), .X(n1020)
         );
  SAEDRVT14_AOI21_1P5 U1358 ( .A1(n9), .A2(n1021), .B(n1015), .X(n1026) );
  SAEDRVT14_OAI21_0P5 U1359 ( .A1(n1019), .A2(n10), .B(n1018), .X(n1033) );
  SAEDRVT14_OAI22_1 U1360 ( .A1(n1024), .A2(n1023), .B1(n1022), .B2(n1021), 
        .X(n1028) );
endmodule


module execute ( a_i, b_i, alu_control, pc_address, alu_res_out, 
        next_sel_address );
  input [31:0] a_i;
  input [31:0] b_i;
  input [3:0] alu_control;
  input [31:0] pc_address;
  output [31:0] alu_res_out;
  output [31:0] next_sel_address;


  alu u_alu0 ( .a_i(a_i), .b_i(b_i), .op_i(alu_control), .res_o(alu_res_out)
         );
endmodule


module execute_pipe ( clk, rst, load_in, store_in, reg_write_in, opb_datain, 
        alu_res, mem_reg_in, next_sel_addr, pre_address_in, instruction_in, 
        reg_write_out, load_out, store_out, opb_dataout, alu_res_out, 
        mem_reg_out, next_sel_address, pre_address_out, instruction_out );
  input [31:0] opb_datain;
  input [31:0] alu_res;
  input [1:0] mem_reg_in;
  input [31:0] next_sel_addr;
  input [31:0] pre_address_in;
  input [31:0] instruction_in;
  output [31:0] opb_dataout;
  output [31:0] alu_res_out;
  output [1:0] mem_reg_out;
  output [31:0] next_sel_address;
  output [31:0] pre_address_out;
  output [31:0] instruction_out;
  input clk, rst, load_in, store_in, reg_write_in;
  output reg_write_out, load_out, store_out;
  wire   n1, n2, n3;

  SAEDRVT14_FDPRBQ_V2_0P5 load_reg ( .D(load_in), .CK(clk), .RD(n1), .Q(
        load_out) );
  SAEDRVT14_FDPRBQ_V2_0P5 store_reg ( .D(store_in), .CK(clk), .RD(n1), .Q(
        store_out) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[14]  ( .D(instruction_in[14]), .CK(
        clk), .RD(n1), .Q(instruction_out[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[13]  ( .D(instruction_in[13]), .CK(
        clk), .RD(n1), .Q(instruction_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[12]  ( .D(instruction_in[12]), .CK(
        clk), .RD(n1), .Q(instruction_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[10]  ( .D(instruction_in[10]), .CK(
        clk), .RD(n1), .Q(instruction_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[9]  ( .D(instruction_in[9]), .CK(
        clk), .RD(n1), .Q(instruction_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \instruction_reg[8]  ( .D(instruction_in[8]), .CK(
        clk), .RD(n3), .Q(instruction_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[31]  ( .D(alu_res[31]), .CK(clk), 
        .RD(rst), .Q(alu_res_out[31]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[30]  ( .D(alu_res[30]), .CK(clk), 
        .RD(rst), .Q(alu_res_out[30]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[29]  ( .D(alu_res[29]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[29]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[28]  ( .D(alu_res[28]), .CK(clk), 
        .RD(n2), .Q(alu_res_out[28]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[27]  ( .D(alu_res[27]), .CK(clk), 
        .RD(n2), .Q(alu_res_out[27]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[26]  ( .D(alu_res[26]), .CK(clk), 
        .RD(n2), .Q(alu_res_out[26]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[25]  ( .D(alu_res[25]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[25]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[24]  ( .D(alu_res[24]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[24]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[23]  ( .D(alu_res[23]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[23]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[22]  ( .D(alu_res[22]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[22]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[21]  ( .D(alu_res[21]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[21]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[19]  ( .D(alu_res[19]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[19]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[18]  ( .D(alu_res[18]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[18]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[17]  ( .D(alu_res[17]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[17]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[16]  ( .D(alu_res[16]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[16]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[15]  ( .D(alu_res[15]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[15]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[14]  ( .D(alu_res[14]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[14]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[13]  ( .D(alu_res[13]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[13]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[12]  ( .D(alu_res[12]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[12]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[11]  ( .D(alu_res[11]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[11]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[10]  ( .D(alu_res[10]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[10]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[9]  ( .D(alu_res[9]), .CK(clk), .RD(
        n1), .Q(alu_res_out[9]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[8]  ( .D(alu_res[8]), .CK(clk), .RD(
        n1), .Q(alu_res_out[8]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[7]  ( .D(alu_res[7]), .CK(clk), .RD(
        n1), .Q(alu_res_out[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[6]  ( .D(alu_res[6]), .CK(clk), .RD(
        n1), .Q(alu_res_out[6]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[4]  ( .D(alu_res[4]), .CK(clk), .RD(
        n1), .Q(alu_res_out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[3]  ( .D(alu_res[3]), .CK(clk), .RD(
        n1), .Q(alu_res_out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[2]  ( .D(alu_res[2]), .CK(clk), .RD(
        n1), .Q(alu_res_out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 \alu_result_reg[1]  ( .D(alu_res[1]), .CK(clk), .RD(
        n3), .Q(alu_res_out[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \alu_result_reg[0]  ( .D(alu_res[0]), .CK(clk), .RD(n3), .Q(alu_res_out[0]) );
  SAEDRVT14_FDPRBQ_V2LP_1 \instruction_reg[7]  ( .D(instruction_in[7]), .CK(
        clk), .RD(n2), .Q(instruction_out[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \instruction_reg[11]  ( .D(instruction_in[11]), 
        .CK(clk), .RD(n1), .Q(instruction_out[11]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \alu_result_reg[20]  ( .D(alu_res[20]), .CK(clk), 
        .RD(n3), .Q(alu_res_out[20]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \alu_result_reg[5]  ( .D(alu_res[5]), .CK(clk), 
        .RD(n1), .Q(alu_res_out[5]) );
  SAEDRVT14_BUF_1 U3 ( .A(rst), .X(n3) );
  SAEDRVT14_BUF_3 U4 ( .A(n2), .X(n1) );
  SAEDRVT14_BUF_S_0P5 U5 ( .A(rst), .X(n2) );
endmodule


module wrappermem ( data_i, byteadd, fun3, mem_en, Load, data_valid, 
        wrap_load_in, masking, data_o, wrap_load_out );
  input [31:0] data_i;
  input [1:0] byteadd;
  input [2:0] fun3;
  input [31:0] wrap_load_in;
  output [3:0] masking;
  output [31:0] data_o;
  output [31:0] wrap_load_out;
  input mem_en, Load, data_valid;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  SAEDRVT14_AO32_U_0P5 U3 ( .A1(byteadd[1]), .A2(fun3[0]), .A3(n2), .B1(
        byteadd[1]), .B2(byteadd[0]), .X(n3) );
  SAEDRVT14_ND2_CDC_1 U4 ( .A1(n8), .A2(n3), .X(n5) );
  SAEDRVT14_OAI21_0P5 U5 ( .A1(byteadd[0]), .A2(n6), .B(n9), .X(masking[0]) );
  SAEDRVT14_ND2B_U_0P5 U6 ( .A(fun3[2]), .B(mem_en), .X(n4) );
  SAEDRVT14_NR2_1 U7 ( .A1(fun3[1]), .A2(n4), .X(n11) );
  SAEDRVT14_OAI21_0P5 U8 ( .A1(fun3[0]), .A2(byteadd[0]), .B(n11), .X(n1) );
  SAEDRVT14_INV_0P5 U9 ( .A(fun3[1]), .X(n2) );
  SAEDRVT14_OR3_0P5 U10 ( .A1(fun3[0]), .A2(n2), .A3(n4), .X(n9) );
  SAEDRVT14_OAI21_0P5 U11 ( .A1(byteadd[1]), .A2(n1), .B(n9), .X(masking[1])
         );
  SAEDRVT14_ND2_CDC_1 U12 ( .A1(fun3[0]), .A2(byteadd[0]), .X(n8) );
  SAEDRVT14_OAI21_0P5 U13 ( .A1(n5), .A2(n4), .B(n9), .X(masking[3]) );
  SAEDRVT14_INV_0P5 U14 ( .A(byteadd[1]), .X(n7) );
  SAEDRVT14_ND2_CDC_1 U15 ( .A1(n11), .A2(n7), .X(n6) );
  SAEDRVT14_OAI22_0P5 U16 ( .A1(byteadd[1]), .A2(n8), .B1(n7), .B2(byteadd[0]), 
        .X(n10) );
  SAEDRVT14_AO21B_0P5 U17 ( .A1(n11), .A2(n10), .B(n9), .X(masking[2]) );
endmodule


module memory_stage ( rst, load, store, valid, data_valid, op_b, 
        alu_out_address, instruction, wrap_load_in, we_re, request, mask, 
        store_data_out, wrap_load_out );
  input [31:0] op_b;
  input [31:0] alu_out_address;
  input [31:0] instruction;
  input [31:0] wrap_load_in;
  output [3:0] mask;
  output [31:0] store_data_out;
  output [31:0] wrap_load_out;
  input rst, load, store, valid, data_valid;
  output we_re, request;
  wire   net24264, net24265, net24266, net24267, net24268, net24269, net24270,
         net24271, net24272, net24273, net24274, net24275, net24276, net24277,
         net24278, net24279, net24280, net24281, net24282, net24283, net24284,
         net24285, net24286, net24287, net24288, net24289, net24290, net24291,
         net24292, net24293, net24294, net24295, net24296, net24297, net24298,
         net24299, net24300, net24301, net24302, net24303, net24304, net24305,
         net24306, net24307, net24308, net24309, net24310, net24311, net24312,
         net24313, net24314, net24315, net24316, net24317, net24318, net24319,
         net24320, net24321, net24322, net24323, net24324, net24325, net24326,
         net24327, net24328, net24329;

  wrappermem u_wrap_mem0 ( .data_i({net24264, net24265, net24266, net24267, 
        net24268, net24269, net24270, net24271, net24272, net24273, net24274, 
        net24275, net24276, net24277, net24278, net24279, net24280, net24281, 
        net24282, net24283, net24284, net24285, net24286, net24287, net24288, 
        net24289, net24290, net24291, net24292, net24293, net24294, net24295}), 
        .byteadd(alu_out_address[1:0]), .fun3(instruction[14:12]), .mem_en(
        store), .Load(net24296), .data_valid(net24297), .wrap_load_in({
        net24298, net24299, net24300, net24301, net24302, net24303, net24304, 
        net24305, net24306, net24307, net24308, net24309, net24310, net24311, 
        net24312, net24313, net24314, net24315, net24316, net24317, net24318, 
        net24319, net24320, net24321, net24322, net24323, net24324, net24325, 
        net24326, net24327, net24328, net24329}), .masking(mask) );
  SAEDRVT14_BUF_S_0P5 U3 ( .A(store), .X(we_re) );
  SAEDRVT14_OR2_MM_0P5 U4 ( .A1(load), .A2(store), .X(request) );
endmodule


module core ( clk, rst, data_mem_valid, instruc_mem_valid, instruction, 
        load_data_in, load_signal, instruction_mem_we_re, 
        instruction_mem_request, data_mem_we_re, data_mem_request, mask_singal, 
        instruc_mask_singal, store_data_out, alu_out_address, pc_address );
  input [31:0] instruction;
  input [31:0] load_data_in;
  output [3:0] mask_singal;
  output [3:0] instruc_mask_singal;
  output [31:0] store_data_out;
  output [31:0] alu_out_address;
  output [31:0] pc_address;
  input clk, rst, data_mem_valid, instruc_mem_valid;
  output load_signal, instruction_mem_we_re, instruction_mem_request,
         data_mem_we_re, data_mem_request;
  wire   n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, load_decode, jalr_execute, next_sel_execute,
         branch_result_execute, next_sel_decode, branch_result_decode,
         jalr_decode, load_execute, store_decode, store_execute,
         store_memstage, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, net24664, net24665, net24666, net24667, net24668,
         net24669, net24670, net24671, net24672, net24673, net24674, net24675,
         net24676, net24677, net24678, net24679, net24680, net24681, net24682,
         net24683, net24684, net24685, net24686, net24687, net24688, net24689,
         net24690, net24691, net24692, net24693, net24694, net24695, net24696,
         net24697, net24698, net24699, net24700, net24701, net24702, net24703,
         net24704, net24705, net24706, net24707, net24708, net24709, net24710,
         net24711, net24712, net24713, net24714, net24715, net24716, net24717,
         net24718, net24719, net24720, net24721, net24722, net24723, net24724,
         net24725, net24726, net24727, net24728, net24729, net24730, net24731,
         net24732, net24733, net24734, net24735, net24736, net24737, net24738,
         net24739, net24740, net24741, net24742, net24743, net24744, net24745,
         net24746, net24747, net24748, net24749, net24750, net24751, net24752,
         net24753, net24754, net24755, net24756, net24757, net24758, net24759,
         net24760, net24761, net24762, net24763, net24764, net24765, net24766,
         net24767, net24768, net24769, net24770, net24771, net24772, net24773,
         net24774, net24775, net24776, net24777, net24778, net24779, net24780,
         net24781, net24782, net24783, net24784, net24785, net24786, net24787,
         net24788, net24789, net24790, net24791, net24792, net24793, net24794,
         net24795, net24796, net24797, net24798, net24799, net24800, net24801,
         net24802, net24803, net24804, net24805, net24806, net24807, net24808,
         net24809, net24810, net24811, net24812, net24813, net24814, net24815,
         net24816, net24817, net24818, net24819, net24820, net24821, net24822,
         net24823, net24824, net24825, net24826, net24827, net24828, net24829,
         net24830, net24831, net24832, net24833, net24834, net24835, net24836,
         net24837, net24838, net24839, net24840, net24841, net24842, net24843,
         net24844, net24845, net24846, net24847, net24848, net24849, net24850,
         net24851, net24852, net24853, net24854, net24855, net24856, net24857,
         net24858, net24859, net24860, net24861, net24862, net24863, net24864,
         net24865, net24866, net24867, net24868, net24869, net24870, net24871,
         net24872, net24873, net24874, net24875, net24876, net24877, net24878,
         net24879, net24880, net24881, net24882, net24883, net24884, net24885,
         net24886, net24887, net24888, net24889, net24890, net24891, net24892,
         net24893, net24894, net24895, net24896, net24897, net24898, net24899,
         net24900, net24901, net24902, net24903, net24904, net24905, net24906,
         net24907, net24908, net24909, net24910, net24911, net24912, net24913,
         net24914, net24915, net24916, net24917, net24918, net24919, net24920,
         net24921, net24922, net24923, net24924, net24925, net24926, net24927,
         net24928, net24929, net24930, net24931, net24932, net24933, net24934,
         net24935, net24936, net24937, net24938, net24939, net24940, net24941,
         net24942, net24943, net24944, net24945, net24946, net24947, net24948,
         net24949, net24950, net24951, net24952, net24953, net24954, net24955,
         net24956, net24957, net24958, net24959, net24960, net24961, net24962,
         net24963, net24964, net24965, net24966, net24967, net24968, net24969,
         net24970, net24971, net24972, net24973, net24974, net24975, net24976,
         net24977, net24978, net24979, net24980, net24981, net24982, net24983,
         net24984, net24985, net24986, net24987, net24988, net24989, net24990,
         net24991, net24992, net24993, net24994, net24995, net24996, net24997,
         net24998, net24999, net25000, net25001, net25002, net25003, net25004,
         net25005, net25006, net25007, net25008, net25009, net25010, net25011,
         net25012, net25013, net25014, net25015, net25016, net25017, net25018,
         net25019, net25020, net25021, net25022, net25023, net25024, net25025,
         net25026, net25027, net25028, net25029, net25030, net25031, net25032,
         net25033, net25034, net25035, net25036, net25037, net25038, net25039,
         net25040, net25041, net25042, net25043, net25044, net25045, net25046,
         net25047, net25048, net25049, net25050, net25051, net25052, net25053,
         net25054, net25055, net25056, net25057, net25058, net25059, net25060,
         net25061, net25062, net25063, net25064, net25065, net25066, net25067,
         net25068, net25069, net25070, net25071, net25072, net25073, net25074,
         net25075, net25076, net25077, net25078, net25079, net25080, net25081,
         net25082, net25083, net25084, net25085, net25086, net25087, net25088,
         net25089, net25090, net25091, net25092, net25093, net25094, net25095,
         net25096, net25097, net25098, net25099, net25100, net25101, net25102,
         net25103, net25104, net25105, net25106, net25107, net25108, net25109,
         net25110, net25111, net25112, net25113, net25114, net25115, net25116,
         net25117, net25118, net25119, net25120, net25121, net25122, net25123,
         net25124, net25125, net25126, net25127, net25128, net25129, net25130,
         net25131, net25132, net25133, net25134;
  wire   [31:0] alu_res_out_execute;
  wire   [31:0] instruction_fetch;
  wire   [31:0] pre_pc_addr_fetch;
  wire   [31:0] pre_pc_addr_decode;
  wire   [31:0] instruction_decode;
  wire   [4:0] rs1_decode;
  wire   [4:0] rs2_decode;
  wire   [3:0] alu_control_decode;
  wire   [31:0] opa_mux_out_decode;
  wire   [31:0] opb_mux_out_decode;
  wire   [3:0] alu_control_execute;
  wire   [31:0] opa_mux_out_execute;
  wire   [31:0] opb_mux_out_execute;
  wire   [31:0] instruction_execute;
  wire   [4:0] rs1_execute;
  wire   [4:0] rs2_execute;
  wire   [31:0] alu_in_a;
  wire   [31:0] alu_in_b;
  wire   [31:0] instruction_memstage;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71;

  fetch u_fetchstage ( .clk(clk), .rst(n251), .next_sel(next_sel_execute), 
        .valid(data_mem_valid), .load(load_decode), .jalr(jalr_execute), 
        .branch_reselt(branch_result_execute), .next_address(
        alu_res_out_execute), .address_in({net25103, net25104, net25105, 
        net25106, net25107, net25108, net25109, net25110, net25111, net25112, 
        net25113, net25114, net25115, net25116, net25117, net25118, net25119, 
        net25120, net25121, net25122, net25123, net25124, net25125, net25126, 
        net25127, net25128, net25129, net25130, net25131, net25132, net25133, 
        net25134}), .instruction_fetch(instruction), .request(
        instruction_mem_request), .address_out({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, pc_address[9:2], SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}), .instruction(instruction_fetch), 
        .pre_address_pc(pre_pc_addr_fetch) );
  fetch_pipe u_fetchpipeline ( .clk(clk), .rst(n251), .pre_address_pc(
        pre_pc_addr_fetch), .instruction_fetch(instruction_fetch), 
        .next_select(next_sel_decode), .branch_result(branch_result_decode), 
        .jalr(jalr_decode), .load(load_decode), .pre_address_out(
        pre_pc_addr_decode), .instruction(instruction_decode) );
  decode u_decodestage ( .clk(net25036), .rst(net25037), .valid(data_mem_valid), .reg_write_en_in(net25038), .load_control_signal(load_execute), 
        .instruction(instruction_decode), .pc_address(pre_pc_addr_decode), 
        .rd_wb_data({net25039, net25040, net25041, net25042, net25043, 
        net25044, net25045, net25046, net25047, net25048, net25049, net25050, 
        net25051, net25052, net25053, net25054, net25055, net25056, net25057, 
        net25058, net25059, net25060, net25061, net25062, net25063, net25064, 
        net25065, net25066, net25067, net25068, net25069, net25070}), 
        .instruction_rd({net25071, net25072, net25073, net25074, net25075, 
        net25076, net25077, net25078, net25079, net25080, net25081, net25082, 
        net25083, net25084, net25085, net25086, net25087, net25088, net25089, 
        net25090, net25091, net25092, net25093, net25094, net25095, net25096, 
        net25097, net25098, net25099, net25100, net25101, net25102}), .load(
        load_decode), .store(store_decode), .jalr(jalr_decode), .next_sel(
        next_sel_decode), .branch_result(branch_result_decode), .alu_control(
        alu_control_decode), .rs1(rs1_decode), .rs2(rs2_decode), .opa_mux_out(
        opa_mux_out_decode), .opb_mux_out(opb_mux_out_decode) );
  decode_pipe u_decodepipeline ( .clk(clk), .rst(n251), .load_in(load_decode), 
        .store_in(store_decode), .jalr_in(jalr_decode), .next_sel_in(
        next_sel_decode), .branch_result_in(branch_result_decode), 
        .reg_write_in(net24945), .rs1_in(rs1_decode), .rs2_in(rs2_decode), 
        .alu_control_in(alu_control_decode), .mem_to_reg_in({net24946, 
        net24947}), .opa_mux_in(opa_mux_out_decode), .opb_mux_in(
        opb_mux_out_decode), .opb_data_in({net24948, net24949, net24950, 
        net24951, net24952, net24953, net24954, net24955, net24956, net24957, 
        net24958, net24959, net24960, net24961, net24962, net24963, net24964, 
        net24965, net24966, net24967, net24968, net24969, net24970, net24971, 
        net24972, net24973, net24974, net24975, net24976, net24977, net24978, 
        net24979}), .pre_address_in({net24980, net24981, net24982, net24983, 
        net24984, net24985, net24986, net24987, net24988, net24989, net24990, 
        net24991, net24992, net24993, net24994, net24995, net24996, net24997, 
        net24998, net24999, net25000, net25001, net25002, net25003, net25004, 
        net25005, net25006, net25007, net25008, net25009, net25010, net25011}), 
        .instruction_in({net25012, net25013, net25014, net25015, net25016, 
        net25017, net25018, net25019, net25020, net25021, net25022, net25023, 
        net25024, net25025, net25026, net25027, net25028, 
        instruction_decode[14:7], net25029, net25030, net25031, net25032, 
        net25033, net25034, net25035}), .load(load_execute), .store(
        store_execute), .jalr_out(jalr_execute), .next_sel(next_sel_execute), 
        .branch_result(branch_result_execute), .rs1_out(rs1_execute), 
        .rs2_out(rs2_execute), .alu_control(alu_control_execute), 
        .opa_mux_out(opa_mux_out_execute), .opb_mux_out(opb_mux_out_execute), 
        .instruction_out({SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, instruction_execute[14:7], 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47}) );
  execute u_executestage ( .a_i(alu_in_a), .b_i(alu_in_b), .alu_control(
        alu_control_execute), .pc_address({net24913, net24914, net24915, 
        net24916, net24917, net24918, net24919, net24920, net24921, net24922, 
        net24923, net24924, net24925, net24926, net24927, net24928, net24929, 
        net24930, net24931, net24932, net24933, net24934, net24935, net24936, 
        net24937, net24938, net24939, net24940, net24941, net24942, net24943, 
        net24944}), .alu_res_out(alu_res_out_execute) );
  execute_pipe u_executepipeline ( .clk(clk), .rst(n251), .load_in(
        load_execute), .store_in(store_execute), .reg_write_in(net24790), 
        .opb_datain({net24791, net24792, net24793, net24794, net24795, 
        net24796, net24797, net24798, net24799, net24800, net24801, net24802, 
        net24803, net24804, net24805, net24806, net24807, net24808, net24809, 
        net24810, net24811, net24812, net24813, net24814, net24815, net24816, 
        net24817, net24818, net24819, net24820, net24821, net24822}), 
        .alu_res(alu_res_out_execute), .mem_reg_in({net24823, net24824}), 
        .next_sel_addr({net24825, net24826, net24827, net24828, net24829, 
        net24830, net24831, net24832, net24833, net24834, net24835, net24836, 
        net24837, net24838, net24839, net24840, net24841, net24842, net24843, 
        net24844, net24845, net24846, net24847, net24848, net24849, net24850, 
        net24851, net24852, net24853, net24854, net24855, net24856}), 
        .pre_address_in({net24857, net24858, net24859, net24860, net24861, 
        net24862, net24863, net24864, net24865, net24866, net24867, net24868, 
        net24869, net24870, net24871, net24872, net24873, net24874, net24875, 
        net24876, net24877, net24878, net24879, net24880, net24881, net24882, 
        net24883, net24884, net24885, net24886, net24887, net24888}), 
        .instruction_in({net24889, net24890, net24891, net24892, net24893, 
        net24894, net24895, net24896, net24897, net24898, net24899, net24900, 
        net24901, net24902, net24903, net24904, net24905, 
        instruction_execute[14:7], net24906, net24907, net24908, net24909, 
        net24910, net24911, net24912}), .load_out(load_signal), .store_out(
        store_memstage), .alu_res_out({n227, n228, n229, n230, n231, n232, 
        n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, 
        n245, n246, n247, n248, alu_out_address[9:2], n249, n250}), 
        .instruction_out({SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, instruction_memstage[14:7], 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71}) );
  memory_stage u_memorystage ( .rst(net24664), .load(load_signal), .store(
        store_memstage), .valid(net24665), .data_valid(net24666), .op_b({
        net24667, net24668, net24669, net24670, net24671, net24672, net24673, 
        net24674, net24675, net24676, net24677, net24678, net24679, net24680, 
        net24681, net24682, net24683, net24684, net24685, net24686, net24687, 
        net24688, net24689, net24690, net24691, net24692, net24693, net24694, 
        net24695, net24696, net24697, net24698}), .alu_out_address({net24699, 
        net24700, net24701, net24702, net24703, net24704, net24705, net24706, 
        net24707, net24708, net24709, net24710, net24711, net24712, net24713, 
        net24714, net24715, net24716, net24717, net24718, net24719, net24720, 
        net24721, net24722, net24723, net24724, net24725, net24726, net24727, 
        net24728, n249, n250}), .instruction({net24729, net24730, net24731, 
        net24732, net24733, net24734, net24735, net24736, net24737, net24738, 
        net24739, net24740, net24741, net24742, net24743, net24744, net24745, 
        instruction_memstage[14:12], net24746, net24747, net24748, net24749, 
        net24750, net24751, net24752, net24753, net24754, net24755, net24756, 
        net24757}), .wrap_load_in({net24758, net24759, net24760, net24761, 
        net24762, net24763, net24764, net24765, net24766, net24767, net24768, 
        net24769, net24770, net24771, net24772, net24773, net24774, net24775, 
        net24776, net24777, net24778, net24779, net24780, net24781, net24782, 
        net24783, net24784, net24785, net24786, net24787, net24788, net24789}), 
        .we_re(data_mem_we_re), .request(data_mem_request), .mask(mask_singal)
         );
  SAEDRVT14_MUX2_MM_0P5 U2 ( .D0(n233), .D1(opb_mux_out_execute[25]), .S(n272), 
        .X(alu_in_b[25]) );
  SAEDRVT14_MUX2_MM_0P5 U3 ( .D0(n237), .D1(opb_mux_out_execute[21]), .S(n272), 
        .X(alu_in_b[21]) );
  SAEDRVT14_MUX2_MM_0P5 U4 ( .D0(n247), .D1(opb_mux_out_execute[11]), .S(n270), 
        .X(alu_in_b[11]) );
  SAEDRVT14_BUF_S_2 U5 ( .A(n267), .X(n270) );
  SAEDRVT14_BUF_1 U6 ( .A(n268), .X(n269) );
  SAEDRVT14_AO221_0P5 U7 ( .A1(n259), .A2(rs2_execute[1]), .B1(rs2_execute[2]), 
        .B2(n258), .C(n252), .X(n255) );
  SAEDRVT14_AO221_0P5 U8 ( .A1(n259), .A2(rs1_execute[1]), .B1(rs1_execute[2]), 
        .B2(n258), .C(n257), .X(n264) );
  SAEDRVT14_MUX2_MM_0P5 U10 ( .D0(alu_out_address[4]), .D1(
        opa_mux_out_execute[4]), .S(n273), .X(alu_in_a[4]) );
  SAEDRVT14_MUX2_MM_0P5 U11 ( .D0(n232), .D1(opb_mux_out_execute[26]), .S(n272), .X(alu_in_b[26]) );
  SAEDRVT14_BUF_S_2 U12 ( .A(n267), .X(n272) );
  SAEDRVT14_MUX2_MM_0P5 U13 ( .D0(n227), .D1(opb_mux_out_execute[31]), .S(n272), .X(alu_in_b[31]) );
  SAEDRVT14_MUX2_MM_0P5 U14 ( .D0(n236), .D1(opa_mux_out_execute[22]), .S(n271), .X(alu_in_a[22]) );
  SAEDRVT14_MUX2_MM_2 U15 ( .D0(alu_out_address[3]), .D1(
        opa_mux_out_execute[3]), .S(n273), .X(alu_in_a[3]) );
  SAEDRVT14_MUX2_MM_1 U16 ( .D0(alu_out_address[4]), .D1(
        opb_mux_out_execute[4]), .S(n266), .X(alu_in_b[4]) );
  SAEDRVT14_BUF_S_6 U17 ( .A(n268), .X(n273) );
  SAEDRVT14_OAI22_1 U18 ( .A1(n262), .A2(rs1_execute[0]), .B1(n261), .B2(
        rs1_execute[3]), .X(n260) );
  SAEDRVT14_INV_S_2 U19 ( .A(instruction_memstage[10]), .X(n261) );
  SAEDRVT14_MUX2_MM_2 U20 ( .D0(alu_out_address[8]), .D1(
        opa_mux_out_execute[8]), .S(n269), .X(alu_in_a[8]) );
  SAEDRVT14_MUX2_2 U21 ( .D0(alu_out_address[5]), .D1(opb_mux_out_execute[5]), 
        .S(n266), .X(alu_in_b[5]) );
  SAEDRVT14_MUX2_MM_2 U22 ( .D0(alu_out_address[5]), .D1(
        opa_mux_out_execute[5]), .S(n273), .X(alu_in_a[5]) );
  SAEDRVT14_MUX2_2 U23 ( .D0(alu_out_address[9]), .D1(opa_mux_out_execute[9]), 
        .S(n269), .X(alu_in_a[9]) );
  SAEDRVT14_MUX2_MM_0P5 U24 ( .D0(alu_out_address[6]), .D1(
        opa_mux_out_execute[6]), .S(n273), .X(alu_in_a[6]) );
  SAEDRVT14_MUX2_2 U25 ( .D0(alu_out_address[7]), .D1(opb_mux_out_execute[7]), 
        .S(n266), .X(alu_in_b[7]) );
  SAEDRVT14_MUX2_2 U26 ( .D0(alu_out_address[8]), .D1(opb_mux_out_execute[8]), 
        .S(n270), .X(alu_in_b[8]) );
  SAEDRVT14_MUX2_MM_0P5 U27 ( .D0(n227), .D1(opa_mux_out_execute[31]), .S(n271), .X(alu_in_a[31]) );
  SAEDRVT14_MUX2_2 U28 ( .D0(alu_out_address[6]), .D1(opb_mux_out_execute[6]), 
        .S(n266), .X(alu_in_b[6]) );
  SAEDRVT14_MUX2_MM_0P5 U29 ( .D0(n247), .D1(opa_mux_out_execute[11]), .S(n269), .X(alu_in_a[11]) );
  SAEDRVT14_MUX2_MM_0P5 U30 ( .D0(alu_out_address[3]), .D1(
        opb_mux_out_execute[3]), .S(n266), .X(alu_in_b[3]) );
  SAEDRVT14_MUX2_2 U31 ( .D0(n248), .D1(opa_mux_out_execute[10]), .S(n269), 
        .X(alu_in_a[10]) );
  SAEDRVT14_MUX2_MM_1 U32 ( .D0(alu_out_address[9]), .D1(
        opb_mux_out_execute[9]), .S(n270), .X(alu_in_b[9]) );
  SAEDRVT14_EO2_1 U33 ( .A1(rs2_execute[4]), .A2(instruction_memstage[11]), 
        .X(n256) );
  SAEDRVT14_EO2_1 U34 ( .A1(rs1_execute[4]), .A2(instruction_memstage[11]), 
        .X(n265) );
  SAEDRVT14_BUF_S_0P5 U35 ( .A(rst), .X(n251) );
  SAEDRVT14_MUX2_MM_0P5 U36 ( .D0(alu_out_address[7]), .D1(
        opa_mux_out_execute[7]), .S(n273), .X(alu_in_a[7]) );
  SAEDRVT14_MUX2_MM_0P5 U37 ( .D0(alu_out_address[2]), .D1(
        opb_mux_out_execute[2]), .S(n266), .X(alu_in_b[2]) );
  SAEDRVT14_BUF_S_2 U38 ( .A(n268), .X(n271) );
  SAEDRVT14_INV_S_2 U39 ( .A(instruction_memstage[8]), .X(n259) );
  SAEDRVT14_INV_S_2 U40 ( .A(instruction_memstage[9]), .X(n258) );
  SAEDRVT14_OAI22_1 U41 ( .A1(n259), .A2(rs2_execute[1]), .B1(n258), .B2(
        rs2_execute[2]), .X(n252) );
  SAEDRVT14_INV_S_2 U42 ( .A(instruction_memstage[7]), .X(n262) );
  SAEDRVT14_OAI22_1 U43 ( .A1(n262), .A2(rs2_execute[0]), .B1(n261), .B2(
        rs2_execute[3]), .X(n253) );
  SAEDRVT14_AO221_2 U44 ( .A1(n262), .A2(rs2_execute[0]), .B1(rs2_execute[3]), 
        .B2(n261), .C(n253), .X(n254) );
  SAEDRVT14_OR3_4 U45 ( .A1(n256), .A2(n255), .A3(n254), .X(n267) );
  SAEDRVT14_BUF_S_6 U46 ( .A(n267), .X(n266) );
  SAEDRVT14_OAI22_1 U47 ( .A1(n259), .A2(rs1_execute[1]), .B1(n258), .B2(
        rs1_execute[2]), .X(n257) );
  SAEDRVT14_AO221_0P5 U48 ( .A1(n262), .A2(rs1_execute[0]), .B1(rs1_execute[3]), .B2(n261), .C(n260), .X(n263) );
  SAEDRVT14_OR3_4 U49 ( .A1(n265), .A2(n264), .A3(n263), .X(n268) );
  SAEDRVT14_MUX2_2 U50 ( .D0(alu_out_address[2]), .D1(opa_mux_out_execute[2]), 
        .S(n273), .X(alu_in_a[2]) );
  SAEDRVT14_MUX2_2 U51 ( .D0(n250), .D1(opb_mux_out_execute[0]), .S(n266), .X(
        alu_in_b[0]) );
  SAEDRVT14_MUX2_MM_1 U52 ( .D0(n250), .D1(opa_mux_out_execute[0]), .S(n273), 
        .X(alu_in_a[0]) );
  SAEDRVT14_MUX2_2 U53 ( .D0(n249), .D1(opb_mux_out_execute[1]), .S(n266), .X(
        alu_in_b[1]) );
  SAEDRVT14_MUX2_MM_1 U54 ( .D0(n248), .D1(opb_mux_out_execute[10]), .S(n270), 
        .X(alu_in_b[10]) );
  SAEDRVT14_MUX2_MM_1 U55 ( .D0(n246), .D1(opb_mux_out_execute[12]), .S(n270), 
        .X(alu_in_b[12]) );
  SAEDRVT14_MUX2_MM_1 U56 ( .D0(n246), .D1(opa_mux_out_execute[12]), .S(n269), 
        .X(alu_in_a[12]) );
  SAEDRVT14_MUX2_MM_1 U57 ( .D0(n245), .D1(opa_mux_out_execute[13]), .S(n269), 
        .X(alu_in_a[13]) );
  SAEDRVT14_MUX2_MM_1 U58 ( .D0(n245), .D1(opb_mux_out_execute[13]), .S(n270), 
        .X(alu_in_b[13]) );
  SAEDRVT14_MUX2_MM_1 U59 ( .D0(n244), .D1(opb_mux_out_execute[14]), .S(n270), 
        .X(alu_in_b[14]) );
  SAEDRVT14_MUX2_MM_1 U60 ( .D0(n244), .D1(opa_mux_out_execute[14]), .S(n269), 
        .X(alu_in_a[14]) );
  SAEDRVT14_MUX2_MM_1 U61 ( .D0(n243), .D1(opa_mux_out_execute[15]), .S(n269), 
        .X(alu_in_a[15]) );
  SAEDRVT14_MUX2_MM_1 U62 ( .D0(n243), .D1(opb_mux_out_execute[15]), .S(n270), 
        .X(alu_in_b[15]) );
  SAEDRVT14_MUX2_MM_1 U63 ( .D0(n242), .D1(opb_mux_out_execute[16]), .S(n272), 
        .X(alu_in_b[16]) );
  SAEDRVT14_MUX2_MM_1 U64 ( .D0(n242), .D1(opa_mux_out_execute[16]), .S(n271), 
        .X(alu_in_a[16]) );
  SAEDRVT14_MUX2_MM_1 U65 ( .D0(n241), .D1(opa_mux_out_execute[17]), .S(n271), 
        .X(alu_in_a[17]) );
  SAEDRVT14_MUX2_MM_1 U66 ( .D0(n241), .D1(opb_mux_out_execute[17]), .S(n272), 
        .X(alu_in_b[17]) );
  SAEDRVT14_MUX2_MM_1 U67 ( .D0(n240), .D1(opb_mux_out_execute[18]), .S(n272), 
        .X(alu_in_b[18]) );
  SAEDRVT14_MUX2_MM_1 U68 ( .D0(n240), .D1(opa_mux_out_execute[18]), .S(n271), 
        .X(alu_in_a[18]) );
  SAEDRVT14_MUX2_MM_1 U69 ( .D0(n239), .D1(opa_mux_out_execute[19]), .S(n271), 
        .X(alu_in_a[19]) );
  SAEDRVT14_MUX2_MM_1 U70 ( .D0(n239), .D1(opb_mux_out_execute[19]), .S(n272), 
        .X(alu_in_b[19]) );
  SAEDRVT14_MUX2_MM_1 U71 ( .D0(n238), .D1(opb_mux_out_execute[20]), .S(n272), 
        .X(alu_in_b[20]) );
  SAEDRVT14_MUX2_MM_1 U72 ( .D0(n238), .D1(opa_mux_out_execute[20]), .S(n271), 
        .X(alu_in_a[20]) );
  SAEDRVT14_MUX2_MM_1 U73 ( .D0(n237), .D1(opa_mux_out_execute[21]), .S(n271), 
        .X(alu_in_a[21]) );
  SAEDRVT14_MUX2_MM_1 U74 ( .D0(n236), .D1(opb_mux_out_execute[22]), .S(n272), 
        .X(alu_in_b[22]) );
  SAEDRVT14_MUX2_MM_1 U75 ( .D0(n235), .D1(opa_mux_out_execute[23]), .S(n271), 
        .X(alu_in_a[23]) );
  SAEDRVT14_MUX2_MM_1 U76 ( .D0(n235), .D1(opb_mux_out_execute[23]), .S(n272), 
        .X(alu_in_b[23]) );
  SAEDRVT14_MUX2_MM_1 U77 ( .D0(n234), .D1(opb_mux_out_execute[24]), .S(n272), 
        .X(alu_in_b[24]) );
  SAEDRVT14_MUX2_MM_1 U78 ( .D0(n234), .D1(opa_mux_out_execute[24]), .S(n271), 
        .X(alu_in_a[24]) );
  SAEDRVT14_MUX2_MM_1 U79 ( .D0(n233), .D1(opa_mux_out_execute[25]), .S(n271), 
        .X(alu_in_a[25]) );
  SAEDRVT14_MUX2_MM_1 U80 ( .D0(n232), .D1(opa_mux_out_execute[26]), .S(n271), 
        .X(alu_in_a[26]) );
  SAEDRVT14_MUX2_MM_1 U81 ( .D0(n231), .D1(opa_mux_out_execute[27]), .S(n271), 
        .X(alu_in_a[27]) );
  SAEDRVT14_MUX2_MM_1 U82 ( .D0(n231), .D1(opb_mux_out_execute[27]), .S(n272), 
        .X(alu_in_b[27]) );
  SAEDRVT14_MUX2_MM_1 U83 ( .D0(n230), .D1(opb_mux_out_execute[28]), .S(n272), 
        .X(alu_in_b[28]) );
  SAEDRVT14_MUX2_MM_1 U84 ( .D0(n230), .D1(opa_mux_out_execute[28]), .S(n271), 
        .X(alu_in_a[28]) );
  SAEDRVT14_MUX2_MM_1 U85 ( .D0(n229), .D1(opa_mux_out_execute[29]), .S(n271), 
        .X(alu_in_a[29]) );
  SAEDRVT14_MUX2_MM_1 U86 ( .D0(n229), .D1(opb_mux_out_execute[29]), .S(n272), 
        .X(alu_in_b[29]) );
  SAEDRVT14_MUX2_MM_1 U87 ( .D0(n228), .D1(opa_mux_out_execute[30]), .S(n271), 
        .X(alu_in_a[30]) );
  SAEDRVT14_MUX2_MM_1 U88 ( .D0(n228), .D1(opb_mux_out_execute[30]), .S(n272), 
        .X(alu_in_b[30]) );
  SAEDRVT14_MUX2_MM_1 U89 ( .D0(n249), .D1(opa_mux_out_execute[1]), .S(n273), 
        .X(alu_in_a[1]) );
endmodule


module memory_INIT_MEM0 ( clk, we_re, request, address, data_in, mask, 
        data_out );
  input [7:0] address;
  input [31:0] data_in;
  input [3:0] mask;
  output [31:0] data_out;
  input clk, we_re, request;
  wire   \*Logic0* , n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n2, n3, n1, n4, n5, n6;
  wire   [31:0] rmw_data;

  SRAM1RW256x32 mem ( .A(address), .I(rmw_data), .O({n7, n8, n9, n10, n11, n12, 
        n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
        n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38}), .OEB(
        \*Logic0* ), .CE(clk), .CSB(n3), .WEB(n2) );
  SAEDRVT14_TIE0_V1_2 U2 ( .X(\*Logic0* ) );
  SAEDRVT14_AN2_MM_0P5 U3 ( .A1(n10), .A2(n4), .X(rmw_data[28]) );
  SAEDRVT14_AN2_MM_0P5 U4 ( .A1(n24), .A2(n1), .X(rmw_data[14]) );
  SAEDRVT14_INV_0P5 U5 ( .A(we_re), .X(n2) );
  SAEDRVT14_INV_0P5 U6 ( .A(request), .X(n3) );
  SAEDRVT14_INV_0P5 U7 ( .A(mask[3]), .X(n4) );
  SAEDRVT14_AN2_MM_0P5 U8 ( .A1(n9), .A2(n4), .X(rmw_data[29]) );
  SAEDRVT14_AN2_MM_0P5 U9 ( .A1(n11), .A2(n4), .X(rmw_data[27]) );
  SAEDRVT14_INV_0P5 U10 ( .A(mask[2]), .X(n6) );
  SAEDRVT14_AN2_MM_0P5 U11 ( .A1(n21), .A2(n6), .X(rmw_data[17]) );
  SAEDRVT14_INV_0P5 U12 ( .A(mask[1]), .X(n1) );
  SAEDRVT14_AN2_MM_0P5 U13 ( .A1(n27), .A2(n1), .X(rmw_data[11]) );
  SAEDRVT14_AN2_MM_0P5 U14 ( .A1(n30), .A2(n1), .X(rmw_data[8]) );
  SAEDRVT14_AN2_MM_0P5 U15 ( .A1(n12), .A2(n4), .X(rmw_data[26]) );
  SAEDRVT14_AN2_MM_0P5 U16 ( .A1(n28), .A2(n1), .X(rmw_data[10]) );
  SAEDRVT14_INV_0P5 U17 ( .A(mask[0]), .X(n5) );
  SAEDRVT14_AN2_MM_0P5 U18 ( .A1(n37), .A2(n5), .X(rmw_data[1]) );
  SAEDRVT14_AN2_MM_0P5 U19 ( .A1(n26), .A2(n1), .X(rmw_data[12]) );
  SAEDRVT14_AN2_MM_0P5 U20 ( .A1(n19), .A2(n6), .X(rmw_data[19]) );
  SAEDRVT14_AN2_MM_0P5 U21 ( .A1(n29), .A2(n1), .X(rmw_data[9]) );
  SAEDRVT14_AN2_MM_0P5 U22 ( .A1(n25), .A2(n1), .X(rmw_data[13]) );
  SAEDRVT14_AN2_MM_0P5 U23 ( .A1(n15), .A2(n6), .X(rmw_data[23]) );
  SAEDRVT14_AN2_MM_0P5 U24 ( .A1(n38), .A2(n5), .X(rmw_data[0]) );
  SAEDRVT14_AN2_MM_0P5 U25 ( .A1(n23), .A2(n1), .X(rmw_data[15]) );
  SAEDRVT14_AN2_MM_0P5 U26 ( .A1(n14), .A2(n4), .X(rmw_data[24]) );
  SAEDRVT14_AN2_MM_0P5 U27 ( .A1(n8), .A2(n4), .X(rmw_data[30]) );
  SAEDRVT14_AN2_MM_0P5 U28 ( .A1(n13), .A2(n4), .X(rmw_data[25]) );
  SAEDRVT14_AN2_MM_0P5 U29 ( .A1(n16), .A2(n6), .X(rmw_data[22]) );
  SAEDRVT14_AN2_MM_0P5 U30 ( .A1(n7), .A2(n4), .X(rmw_data[31]) );
  SAEDRVT14_AN2_MM_0P5 U31 ( .A1(n36), .A2(n5), .X(rmw_data[2]) );
  SAEDRVT14_AN2_MM_0P5 U32 ( .A1(n20), .A2(n6), .X(rmw_data[18]) );
  SAEDRVT14_AN2_MM_0P5 U33 ( .A1(n31), .A2(n5), .X(rmw_data[7]) );
  SAEDRVT14_AN2_MM_0P5 U34 ( .A1(n22), .A2(n6), .X(rmw_data[16]) );
  SAEDRVT14_AN2_MM_0P5 U35 ( .A1(n33), .A2(n5), .X(rmw_data[5]) );
  SAEDRVT14_AN2_MM_0P5 U36 ( .A1(n35), .A2(n5), .X(rmw_data[3]) );
  SAEDRVT14_AN2_MM_0P5 U37 ( .A1(n34), .A2(n5), .X(rmw_data[4]) );
  SAEDRVT14_AN2_MM_0P5 U38 ( .A1(n32), .A2(n5), .X(rmw_data[6]) );
  SAEDRVT14_AN2_MM_0P5 U39 ( .A1(n17), .A2(n6), .X(rmw_data[21]) );
  SAEDRVT14_AN2_MM_0P5 U40 ( .A1(n18), .A2(n6), .X(rmw_data[20]) );
endmodule


module data_mem_top ( clk, rst, we_re, request, load, mask, address, data_in, 
        valid, data_out );
  input [3:0] mask;
  input [7:0] address;
  input [31:0] data_in;
  output [31:0] data_out;
  input clk, rst, we_re, request, load;
  output valid;
  wire   net24632, net24633, net24634, net24635, net24636, net24637, net24638,
         net24639, net24640, net24641, net24642, net24643, net24644, net24645,
         net24646, net24647, net24648, net24649, net24650, net24651, net24652,
         net24653, net24654, net24655, net24656, net24657, net24658, net24659,
         net24660, net24661, net24662, net24663;

  memory_INIT_MEM0 u_memory ( .clk(clk), .we_re(we_re), .request(request), 
        .address(address), .data_in({net24632, net24633, net24634, net24635, 
        net24636, net24637, net24638, net24639, net24640, net24641, net24642, 
        net24643, net24644, net24645, net24646, net24647, net24648, net24649, 
        net24650, net24651, net24652, net24653, net24654, net24655, net24656, 
        net24657, net24658, net24659, net24660, net24661, net24662, net24663}), 
        .mask(mask) );
  SAEDRVT14_FDPRBQ_V2_0P5 valid_reg ( .D(load), .CK(clk), .RD(rst), .Q(valid)
         );
endmodule


module microprocessor ( clk, rst, instruction );
  input [31:0] instruction;
  input clk, rst;
  wire   instruction_mem_request, load_signal, data_mem_we_re,
         data_mem_request, data_mem_valid, net25140, net25141, net25142,
         net25143, net25144, net25145, net25146, net25147, net25148, net25149,
         net25150, net25151, net25152, net25153, net25154, net25155, net25156,
         net25157, net25158, net25159, net25160, net25161, net25162, net25163,
         net25164, net25165, net25166, net25167, net25168, net25169, net25170,
         net25171, net25172, net25173, net25174, net25175, net25176, net25177,
         net25178, net25179, net25180, net25181, net25182, net25183, net25184,
         net25185, net25186, net25187, net25188, net25189, net25190, net25191,
         net25192, net25193, net25194, net25195, net25196, net25197, net25198,
         net25199, net25200, net25201, net25202, net25203, net25204, net25205,
         net25206, net25207, net25208, net25209, net25210;
  wire   [31:0] pc_address;
  wire   [31:0] instruction_data;
  wire   [3:0] mask;
  wire   [31:0] alu_out_address;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47;

  instruc_mem_top_INIT_MEM1 u_instruction_memory ( .clk(clk), .rst(net25205), 
        .we_re(net25206), .request(instruction_mem_request), .mask({net25207, 
        net25208, net25209, net25210}), .address(pc_address[9:2]), .data_in(
        instruction), .data_out(instruction_data) );
  core u_core ( .clk(clk), .rst(rst), .data_mem_valid(data_mem_valid), 
        .instruc_mem_valid(net25172), .instruction(instruction_data), 
        .load_data_in({net25173, net25174, net25175, net25176, net25177, 
        net25178, net25179, net25180, net25181, net25182, net25183, net25184, 
        net25185, net25186, net25187, net25188, net25189, net25190, net25191, 
        net25192, net25193, net25194, net25195, net25196, net25197, net25198, 
        net25199, net25200, net25201, net25202, net25203, net25204}), 
        .load_signal(load_signal), .instruction_mem_request(
        instruction_mem_request), .data_mem_we_re(data_mem_we_re), 
        .data_mem_request(data_mem_request), .mask_singal(mask), 
        .alu_out_address({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        alu_out_address[9:2], SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}), .pc_address({SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, pc_address[9:2], SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47}) );
  data_mem_top u_data_memory ( .clk(clk), .rst(rst), .we_re(data_mem_we_re), 
        .request(data_mem_request), .load(load_signal), .mask(mask), .address(
        alu_out_address[9:2]), .data_in({net25140, net25141, net25142, 
        net25143, net25144, net25145, net25146, net25147, net25148, net25149, 
        net25150, net25151, net25152, net25153, net25154, net25155, net25156, 
        net25157, net25158, net25159, net25160, net25161, net25162, net25163, 
        net25164, net25165, net25166, net25167, net25168, net25169, net25170, 
        net25171}), .valid(data_mem_valid) );
endmodule

