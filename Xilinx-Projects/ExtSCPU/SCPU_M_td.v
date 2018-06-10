// Verilog test fixture created from schematic D:\Documents\GitHub\First\Xilinx-Projects\ExtSCPU\Code\CPU\SCPU_M.sch - Wed Jun 06 17:57:08 2018

`timescale 1ns / 1ps

module SCPU_M_SCPU_M_sch_tb();

// Inputs
   reg clk;
   reg INT;
   reg [31:0] inst_in;
   reg reset;
   reg [31:0] Data_in;
   reg MIO_ready;

// Output
   wire CPU_MIO;
   wire mem_w;
   wire [31:0] PC_out;
   wire [31:0] Addr_out;
   wire [31:0] Data_out;

// Bidirs

// Instantiate the UUT
   SCPU_M UUT (
		.clk(clk), 
		.CPU_MIO(CPU_MIO), 
		.mem_w(mem_w), 
		.INT(INT), 
		.inst_in(inst_in), 
		.reset(reset), 
		.Data_in(Data_in), 
		.PC_out(PC_out), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.MIO_ready(MIO_ready)
   );
// Initialize Inputs

       initial begin
		clk = 0;
		INT = 0;
		inst_in = 32'b10010100111000100000100000100000;
		reset = 0;
		Data_in = 32'h1;
		MIO_ready = 0;
end
endmodule
