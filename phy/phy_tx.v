 `include "mux.v"
 `include "partoserial.v"
 `include "bs.v"

module phy_tx(
    input reset_L,
    input clk_8f,
    input clk_2f,
    input clk_f,
    input valid_data_in_0,
    input valid_data_in_1,
    input [7:0]data_in_0,
    input [7:0]data_in_1,
    output reg transfer_0,
    output reg transfer_1);

reg[7:0]        data_reg_0;
reg[7:0]        data_reg_1;
reg             valid_reg_0;
reg             valid_reg_1;

//Wires
/*AUTOREG*/
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		data_mux;		// From mux0 of mux.v
wire [7:0]		data_stripe_0;		// From byte of bs.v
wire [7:0]		data_stripe_1;		// From byte of bs.v
wire			out;			// From line0 of partoserial.v, ...
wire			valid_mux;		// From mux0 of mux.v
wire			valid_stripe_0;		// From byte of bs.v
wire			valid_stripe_1;		// From byte of bs.v
// End of automatics
wire out_0;
wire out_1;

// Bloque de flip flops a la entrada del TX
always @(posedge clk_2f) begin
    if(~reset_L) begin
        data_reg_0 <= 0;
        data_reg_1 <= 0;
        valid_reg_0 <= 0;
        valid_reg_1 <= 0;
    end else begin
        data_reg_0 <= data_in_0;
        data_reg_1 <= data_in_1;
        valid_reg_0 <= valid_data_in_0;
        valid_reg_1 <= valid_data_in_1;
    end
end

always @(posedge clk_8f) begin
    if(~reset_L) begin
        transfer_0 <= 0;
        transfer_1 <= 0;
    end else begin
        transfer_0 <= out_0;
        transfer_1 <= out_1;
    end
end

mux mux0 (/*autoinst*/
			.data_mux(data_mux[7:0]),
			.valid_mux(valid_mux),
			.clk_2f(clk_2f),
			.reset_L(reset_L),
			.valid_reg_0(valid_data_in_0),
			.data_reg_0(data_in_0[7:0]),
			.valid_reg_1(valid_data_in_1),
			.data_reg_1(data_in_1[7:0]));

bs byte (/*autoinst*/
			.data_stripe_0(data_stripe_0[7:0]),
			.valid_stripe_0(valid_stripe_0),
			.data_stripe_1(data_stripe_1[7:0]),
			.valid_stripe_1(valid_stripe_1),
			.data_mux(data_mux[7:0]),
			.valid_mux(valid_mux),
			.reset_L(reset_L),
			.clk_2f(clk_2f));

partoserial line0 (/*autoinst*/
			.out(out_0),
			.data_stripe(data_stripe_0[7:0]),
			.valid_stripe(valid_stripe_0),
			.reset_L(reset_L),
			.clk_8f(clk_8f),
			.clk_f(clk_f));

partoserial line1 (/*autoinst*/
			.out(out_1),
			.data_stripe(data_stripe_1[7:0]),
			.valid_stripe(valid_stripe_1),
			.reset_L(reset_L),
			.clk_8f(clk_8f),
			.clk_f(clk_f));
endmodule