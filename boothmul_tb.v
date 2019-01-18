
module boothmul_tb;
	reg	[15:0]num;
	reg	[15:0]mul;
	wire[31:0]ans;
	
	
	boothmul u1(num, mul,ans);
	initial 
	begin
		$monitor("num = %b mul = %b answer = %b\n",num,mul,ans);
		#10	num= 16'b00001000;
		mul = 16'b1010010010000010;
		#10	num= 16'b00100100;
		mul = 16'b01100100;
		#10	num= 16'b00010001;
		mul = 16'b10100000;
		#10	num= 16'b01010010;
		mul = 16'b00101100;
		#10	num= 16'b11010000;
		
    end


endmodule