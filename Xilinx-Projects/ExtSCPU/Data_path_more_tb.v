// Verilog test fixture created from schematic D:\Documents\GitHub\First\Xilinx-Projects\ExtSCPU\Code\CPU\SDPath_M.sch - Wed Jun 06 16:39:17 2018

`timescale 1ns / 1ps

module SDPath_M_SDPath_M_sch_tb();

// Inputs
   reg ALUSrc_B;
   reg RegDst;
   reg rst;
   reg clk;
   reg [2:0] ALU_Control;
   reg [25:0] inst_field;
   reg RegWrite;
   reg Jal;
   reg [1:0] DatatoReg;
   reg [31:0] Data_in;
   reg [1:0] Branch;

// Output
   wire [31:0] Data_out;

   wire zero;
   wire [31:0] ALU_out;
   wire overflow;

// Bidirs

// Instantiate the UUT
   SDPath_M UUT (
		.ALUSrc_B(ALUSrc_B), 
		.RegDst(RegDst), 
		.Data_out(Data_out), 
		.rst(rst), 
		.clk(clk), 
		.ALU_Control(ALU_Control), 
		.zero(zero), 
		.inst_field(inst_field), 
		.RegWrite(RegWrite), 
		.Jal(Jal), 
		.ALU_out(ALU_out), 
		.DatatoReg(DatatoReg), 
		.Data_in(Data_in), 
		.overflow(overflow), 
		.Branch(Branch)
   );
// Initialize Inputs
//实现R型指令add
      initial begin 
		ALUSrc_B = 0;
		RegDst = 1;
		rst = 1;
		clk = 1;
		ALU_Control=3'b010;
		inst_field = 26'b10010100111000100000100000;      //18 10010 19 10011 17 10001 0 00000 32 100000
		RegWrite = 1;
		Jal = 0;
		DatatoReg = 2'b00;
		Data_in =32'h1;
		Branch =2'b00;
  end
endmodule
