module alu(a,b,enable,command,d_out);
	input [7:0] a;
	input [7:0] b;
	input enable;
	input [3:0] command;
	output [15:0] d_out;
	reg [15:0] out;
		
	parameter 
			ADD = 4'b0000,
			SUB = 4'b0001,
			MUL = 4'b0010,
			DIV = 4'b0011,
			INC = 4'b0100,
			DEC = 4'b0101,
			SHL = 4'b0110,
			SHR = 4'b0111,
			AND = 4'b1000,
			OR = 4'b1001,
			NOT = 4'b1010,
			NAND = 4'b1011,
			NOR = 4'b1100,
			XOR = 4'b1101,
			XNOR = 4'b1110,
			BUF = 4'b1111;
	always@(a,b,command)
	begin
		case(command)
			ADD : out = a+b;
			SUB : out = a-b;
			MUL : out = a*b;
			DIV : out = a/b;
			INC : out = a + 1'b1;
			DEC : out = a - 1'b1;
			SHL : out = a << 1;
			SHR : out = a >> 1;
			AND : out = a && b;
			OR  : out = a || b;
			NOT : out = !(a);
			NAND : out = ~(a & b);
			NOR : out = ~(a | b);
			XOR : out = a^b;
			XNOR : out = ~(a^b);
			BUF : out = a;
		endcase
    end
	
	assign d_out = (enable) ? out : 16'hzzzz;
endmodule 	
			