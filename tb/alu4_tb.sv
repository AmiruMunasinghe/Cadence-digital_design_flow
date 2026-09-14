module alu4_tb;

    logic [3:0] A;
    logic [3:0] B;
    logic [1:0] OP;
    logic [3:0] Y;

    alu4 dut (
        .A(A),
        .B(B),
        .OP(OP),
        .Y(Y)
    );

    initial begin
        A = 4'd5; B = 4'd3; OP = 2'b00;
        #10;
        $display("ADD: A=%d B=%d Y=%d", A, B, Y);

        A = 4'd5; B = 4'd3; OP = 2'b01;
        #10;
        $display("SUB: A=%d B=%d Y=%d", A, B, Y);

        A = 4'b1010; B = 4'b1100; OP = 2'b10;
        #10;
        $display("AND: A=%b B=%b Y=%b", A, B, Y);

        A = 4'b1010; B = 4'b1100; OP = 2'b11;
        #10;
        $display("OR : A=%b B=%b Y=%b", A, B, Y);

        $finish;
    end

endmodule
