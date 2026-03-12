`timescale 1ns/1ps

module tb_alu;

reg  [31:0] a, b;
reg  [2:0]  op;
wire [31:0] y;

alu dut (
    .a(a),
    .b(b),
    .op(op),
    .y(y)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    a = 32'd15; b = 32'd10; op = 3'b000; #10;
    a = 32'd15; b = 32'd10; op = 3'b001; #10;
    a = 32'hF0F0_F0F0; b = 32'h0FF0_0FF0; op = 3'b010; #10;
    a = 32'hF0F0_F0F0; b = 32'h0FF0_0FF0; op = 3'b011; #10;
    a = 32'hAAAA_AAAA; b = 32'h5555_5555; op = 3'b100; #10;
    a = 32'd8; b = 32'd0; op = 3'b101; #10;
    a = 32'd8; b = 32'd0; op = 3'b110; #10;

    $finish;
end

endmodule
