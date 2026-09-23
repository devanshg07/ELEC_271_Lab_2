module mux4_tb;
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    mux4 DUT (.I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S0(S0), .S1(S1), .Y(Y));
        
    initial begin
        I0=1'b0; I1=1'b1; I2=1'b0; I3=1'b1;
        S1=1'b0; S0=1'b0; #10;
        S1=1'b0; S0=1'b1; #10;
        S1=1'b1; S0=1'b0; #10;
        S1=1'b1; S0=1'b1; #10;
        $stop;
    end
endmodule