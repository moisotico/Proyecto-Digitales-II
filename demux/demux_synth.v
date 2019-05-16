/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 5.4.0-6ubuntu1~16.04.4 -O2 -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "demux_synth.v:9" *)
module demux_synth(data_out0, data_out1, valid_out0, valid_out1, valid_in, clk, reset_L, data_in);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  (* src = "demux_synth.v:15" *)
  input clk;
  (* src = "demux_synth.v:17" *)
  input [7:0] data_in;
  (* src = "demux_synth.v:10" *)
  output [7:0] data_out0;
  (* src = "demux_synth.v:11" *)
  output [7:0] data_out1;
  (* src = "demux_synth.v:20" *)
  wire [7:0] data_reg0;
  (* src = "demux_synth.v:16" *)
  input reset_L;
  (* src = "demux_synth.v:14" *)
  input valid_in;
  (* src = "demux_synth.v:12" *)
  output valid_out0;
  (* src = "demux_synth.v:13" *)
  output valid_out1;
  NOT _34_ (
    .A(valid_in),
    .Y(_00_)
  );
  NOT _35_ (
    .A(reset_L),
    .Y(_01_)
  );
  NOR _36_ (
    .A(_01_),
    .B(_00_),
    .Y(valid_out0)
  );
  NOR _37_ (
    .A(data_reg0[0]),
    .B(valid_in),
    .Y(_02_)
  );
  NOT _38_ (
    .A(data_in[0]),
    .Y(_03_)
  );
  NAND _39_ (
    .A(_03_),
    .B(valid_in),
    .Y(_04_)
  );
  NAND _40_ (
    .A(_04_),
    .B(reset_L),
    .Y(_05_)
  );
  NOR _41_ (
    .A(_05_),
    .B(_02_),
    .Y(data_out0[0])
  );
  NOR _42_ (
    .A(valid_in),
    .B(data_reg0[1]),
    .Y(_06_)
  );
  NOT _43_ (
    .A(data_in[1]),
    .Y(_07_)
  );
  NAND _44_ (
    .A(valid_in),
    .B(_07_),
    .Y(_08_)
  );
  NAND _45_ (
    .A(_08_),
    .B(reset_L),
    .Y(_09_)
  );
  NOR _46_ (
    .A(_09_),
    .B(_06_),
    .Y(data_out0[1])
  );
  NOR _47_ (
    .A(data_reg0[2]),
    .B(valid_in),
    .Y(_10_)
  );
  NOT _48_ (
    .A(data_in[2]),
    .Y(_11_)
  );
  NAND _49_ (
    .A(_11_),
    .B(valid_in),
    .Y(_12_)
  );
  NAND _50_ (
    .A(_12_),
    .B(reset_L),
    .Y(_13_)
  );
  NOR _51_ (
    .A(_13_),
    .B(_10_),
    .Y(data_out0[2])
  );
  NOR _52_ (
    .A(data_reg0[3]),
    .B(valid_in),
    .Y(_14_)
  );
  NOT _53_ (
    .A(data_in[3]),
    .Y(_15_)
  );
  NAND _54_ (
    .A(_15_),
    .B(valid_in),
    .Y(_16_)
  );
  NAND _55_ (
    .A(_16_),
    .B(reset_L),
    .Y(_17_)
  );
  NOR _56_ (
    .A(_17_),
    .B(_14_),
    .Y(data_out0[3])
  );
  NOR _57_ (
    .A(data_reg0[4]),
    .B(valid_in),
    .Y(_18_)
  );
  NOT _58_ (
    .A(data_in[4]),
    .Y(_19_)
  );
  NAND _59_ (
    .A(_19_),
    .B(valid_in),
    .Y(_20_)
  );
  NAND _60_ (
    .A(_20_),
    .B(reset_L),
    .Y(_21_)
  );
  NOR _61_ (
    .A(_21_),
    .B(_18_),
    .Y(data_out0[4])
  );
  NOR _62_ (
    .A(data_reg0[5]),
    .B(valid_in),
    .Y(_22_)
  );
  NOT _63_ (
    .A(data_in[5]),
    .Y(_23_)
  );
  NAND _64_ (
    .A(_23_),
    .B(valid_in),
    .Y(_24_)
  );
  NAND _65_ (
    .A(_24_),
    .B(reset_L),
    .Y(_25_)
  );
  NOR _66_ (
    .A(_25_),
    .B(_22_),
    .Y(data_out0[5])
  );
  NOR _67_ (
    .A(data_reg0[6]),
    .B(valid_in),
    .Y(_26_)
  );
  NOT _68_ (
    .A(data_in[6]),
    .Y(_27_)
  );
  NAND _69_ (
    .A(_27_),
    .B(valid_in),
    .Y(_28_)
  );
  NAND _70_ (
    .A(_28_),
    .B(reset_L),
    .Y(_29_)
  );
  NOR _71_ (
    .A(_29_),
    .B(_26_),
    .Y(data_out0[6])
  );
  NOR _72_ (
    .A(data_reg0[7]),
    .B(valid_in),
    .Y(_30_)
  );
  NOT _73_ (
    .A(data_in[7]),
    .Y(_31_)
  );
  NAND _74_ (
    .A(_31_),
    .B(valid_in),
    .Y(_32_)
  );
  NAND _75_ (
    .A(_32_),
    .B(reset_L),
    .Y(_33_)
  );
  NOR _76_ (
    .A(_33_),
    .B(_30_),
    .Y(data_out0[7])
  );
  DFF _77_ (
    .C(clk),
    .D(data_out0[0]),
    .Q(data_reg0[0])
  );
  DFF _78_ (
    .C(clk),
    .D(data_out0[1]),
    .Q(data_reg0[1])
  );
  DFF _79_ (
    .C(clk),
    .D(data_out0[2]),
    .Q(data_reg0[2])
  );
  DFF _80_ (
    .C(clk),
    .D(data_out0[3]),
    .Q(data_reg0[3])
  );
  DFF _81_ (
    .C(clk),
    .D(data_out0[4]),
    .Q(data_reg0[4])
  );
  DFF _82_ (
    .C(clk),
    .D(data_out0[5]),
    .Q(data_reg0[5])
  );
  DFF _83_ (
    .C(clk),
    .D(data_out0[6]),
    .Q(data_reg0[6])
  );
  DFF _84_ (
    .C(clk),
    .D(data_out0[7]),
    .Q(data_reg0[7])
  );
  assign data_out1 = 8'b00000000;
  assign valid_out1 = 1'b0;
endmodule
