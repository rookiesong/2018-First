`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:33 06/02/2018
// Design Name:   SCtrl_M
// Module Name:   D:/Documents/GitHub/First/Xilinx-Projects/ExtSCPU/SCPU_ctrl_more_tb.v
// Project Name:  OExp07-ExtSCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCtrl_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCPU_ctrl_more_tb;

	// Inputs
	reg [5:0] OPcode;
	reg [5:0] Fun;
	reg MIO_ready;
	reg zero;

	// Outputs
	wire RegDst;
	wire ALUSrc_B;
	wire [1:0] DatatoReg;
	wire Jal;
	wire [1:0] Branch;
	wire RegWrite;
	wire mem_w;
	wire [2:0] ALU_Control;
	wire CPU_MIO;

	// Instantiate the Unit Under Test (UUT)
	SCtrl_M uut (
		.OPcode(OPcode), 
		.Fun(Fun), 
		.MIO_ready(MIO_ready), 
		.zero(zero), 
		.RegDst(RegDst), 
		.ALUSrc_B(ALUSrc_B), 
		.DatatoReg(DatatoReg), 
		.Jal(Jal), 
		.Branch(Branch), 
		.RegWrite(RegWrite), 
		.mem_w(mem_w), 
		.ALU_Control(ALU_Control), 
		.CPU_MIO(CPU_MIO)
	);

	initial begin
		// Initialize Inputs
		OPcode = 0;
		Fun = 0;
		MIO_ready = 0;
		zero = 0;

		// Wait 100 ns for global reset to finish
		#10;
		OPcode=6'b000000;
		Fun=6'b100000;
		//ALU_Control=3'b010;   //add
		
		#10;
		OPcode=6'b000000;
		Fun=6'b100010;
		//ALU_Control=3'b110;	//sub
		
		#100;
		OPcode=6'b000000;
		Fun=6'b100100;	
		//ALU_Control=3'b000;	//and
		
		#100;
		OPcode=6'b000000;
		Fun=6'b100101;
		//ALU_Control=3'b001;	//or
		#100;
		OPcode=6'b000000;
		Fun=6'b101010;
		//ALU_Control=3'b111;	//slt
		
		#100;
		OPcode=6'b000000;
		Fun=6'b100111;
		//ALU_Control=3'b100;	//nor:~(A | B)
		
		#100;
		OPcode=6'b000000;
		Fun=6'b000010;
		//ALU_Control=3'b101;	//srl
		
		#100;
		OPcode=6'b000000;
		Fun=6'b010110;
		//ALU_Control=3'b011;	//xor
		
		#100;
		OPcode=6'b000000;
		Fun=6'h08;
		//Branch=2'b11; 			//jr
	end
      
endmodule

