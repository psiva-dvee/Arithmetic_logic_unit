module alu_tb();
	reg [7:0] a;
	reg [7:0] b;
	reg enable;
	reg [3:0] command;
	wire [15:0]out;
	integer m,n,o,j,k,l,i;
	
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
	reg [4*8:0] string_cmd;
	alu DUT(a,b,enable,command,out);
	task initialize;
		begin 
			{a,b,enable,command} = 0;
		end
	endtask
	task en_oe;
		input i;
		begin 
			enable = i;
		end
	endtask
	task inputs;
		input [7:0] j,k;
		begin
			a = j;
			b = k;
		end 
	endtask
	task cmd;
		input [3:0]l;
		begin 
			command = l;
		end 
	endtask
	task delay();
		begin 
			#10;
		end
	endtask
	always@(command)
		begin
			case (command)
			
			ADD : string_cmd = "ADD";
			SUB : string_cmd = "SUB";
			MUL : string_cmd = "MUL";
			DIV : string_cmd = "DIV";
			INC : string_cmd = "INC";
			DEC : string_cmd = "DEC";
			SHL : string_cmd = "SHL";
			SHR : string_cmd = "SHR";
			AND : string_cmd = "AND";
			OR  : string_cmd = "OR";
			NOT : string_cmd = "NOT";
			NAND : string_cmd = "NAND";
			NOR: string_cmd = "NOR";
			XOR : string_cmd = "XOR";
			XNOR : string_cmd = "XNOR";
			BUF: string_cmd = "BUF" ;
			endcase
		end
	initial
		begin 
			initialize;
			en_oe(1'b1);
			for(m=0;m<16;m=m+1)
				begin
				for(n=0;n<16; n=n+1)
					begin
					inputs(m,n);
					for(o=0;o<16;o=o+1)
						begin
						command = o;
						delay;
						end
					end
				
				end
			en_oe(1);
			inputs(10,20);
			cmd(ADD);
			delay;
			en_oe(1);
			inputs(15,35);
			cmd(SUB);
			delay;
		end
	initial 
      $monitor("Input Enable=%b, a=%b, b=%b, command=%s, Output out=%b",enable,a,b,string_cmd,out);							
endmodule
		
	
	
	
	
	