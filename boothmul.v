module boothmul(num , mul , ans);
    input [15:0] num , mul;
    wire [31:0] a , abar;
    wire [15:0] b ;
    wire b_1;
    output [31:0] ans;
    wire [31:0] d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16;
    assign b = mul;
    assign a = {{16{num[15]}}, num[15:0]};
    assign b_1 = 0;
    assign abar = b_1 - a;
    assign d1  = (({32{b[0]  ^ b_1  }}) & (({32{b_1  }} & a) | ({32{b[0] }} &abar)))      ;
    assign d2  = (({32{b[1]  ^ b[0] }}) & (({32{b[0] }} & a) | ({32{b[1] }} &abar))) << 1 ;
    assign d3  = (({32{b[2]  ^ b[1] }}) & (({32{b[1] }} & a) | ({32{b[2] }} &abar))) << 2 ;
    assign d4  = (({32{b[3]  ^ b[2] }}) & (({32{b[2] }} & a) | ({32{b[3] }} &abar))) << 3 ;
    assign d5  = (({32{b[4]  ^ b[3] }}) & (({32{b[3] }} & a) | ({32{b[4] }} &abar))) << 4 ;
    assign d6  = (({32{b[5]  ^ b[4] }}) & (({32{b[4] }} & a) | ({32{b[5] }} &abar))) << 5 ;
    assign d7  = (({32{b[6]  ^ b[5] }}) & (({32{b[5] }} & a) | ({32{b[6] }} &abar))) << 6 ;
    assign d8  = (({32{b[7]  ^ b[6] }}) & (({32{b[6] }} & a) | ({32{b[7] }} &abar))) << 7 ;
    assign d9  = (({32{b[8]  ^ b[7] }}) & (({32{b[7] }} & a) | ({32{b[8] }} &abar))) << 8 ;
    assign d10 = (({32{b[9]  ^ b[8] }}) & (({32{b[8] }} & a) | ({32{b[9] }} &abar))) << 9 ;
    assign d11 = (({32{b[10] ^ b[9] }}) & (({32{b[9] }} & a) | ({32{b[10]}} &abar))) << 10; 
    assign d12 = (({32{b[11] ^ b[10]}}) & (({32{b[10]}} & a) | ({32{b[11]}} &abar))) << 11; 
    assign d13 = (({32{b[12] ^ b[11]}}) & (({32{b[11]}} & a) | ({32{b[12]}} &abar))) << 12; 
    assign d14 = (({32{b[13] ^ b[12]}}) & (({32{b[12]}} & a) | ({32{b[13]}} &abar))) << 13; 
    assign d15 = (({32{b[14] ^ b[13]}}) & (({32{b[13]}} & a) | ({32{b[14]}} &abar))) << 14; 
    assign d16 = (({32{b[15] ^ b[14]}}) & (({32{b[14]}} & a) | ({32{b[15]}} &abar))) << 15; 
    assign ans = d1+d2+d3+d4+d5+d6+d7+d8+d9+d10+d11+d12+d13+d14+d15+d16;
endmodule