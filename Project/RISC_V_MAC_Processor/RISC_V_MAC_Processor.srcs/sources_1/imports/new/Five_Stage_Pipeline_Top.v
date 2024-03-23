// Copyright 2023 MERL-DSU

//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at

//        http://www.apache.org/licenses/LICENSE-2.0

//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

`include "Fetch_Cycle.v"
`include "Decode_Cycle.v"
`include "Execute_Cycle.v"
`include "Memory_Cycle.v"
`include "Writeback_Cycle.v"    
`include "Slow_Clock.v"

`include "Hazard_unit.v"






module Pipeline_top(button,clk_100mhz, rst, Data_Mem_display_reg, anode, SSD);

    // Declaration of I/O
    input button;
    input clk_100mhz, rst;
    output  /*[31:0]*/ /*reg*/ Data_Mem_display_reg;
    output [7:0] anode;
    output [7:0] SSD;

//--------------------------------------------------------    
    
    //wire clk
//    wire clk_debounce;   
    
//   ------------------------------------------------------------

    // Declaration of Interim Wires
    wire PCSrcE, RegWriteW, RegWriteE, ALUSrcE, MemWriteE, ResultSrcE, BranchE, RegWriteM, MemWriteM, ResultSrcM, ResultSrcW;
    wire [5:0] ALUControlE;
    wire [4:0] RD_E, RD_M, RDW;
    wire [31:0] PCTargetE, InstrD, PCD, PCPlus4D, ResultW, RD1_E, RD2_E, Imm_Ext_E, PCE, PCPlus4E, PCPlus4M, WriteDataM, ALU_ResultM;
    wire [31:0] PCPlus4W, ALU_ResultW, ReadDataW;
    wire [4:0] RS1_E, RS2_E, RS1_D, RS2_D;
    wire [3:0]MACControlE ;
    wire [3:0]MACControlM ;
    wire [1:0] MACDME ;
    wire [1:0] MACDMM ;
    wire [1:0] ForwardBE, ForwardAE;
    wire StallF, StallD, FlushE, FlushD;
    
    wire clk, clk_1msec;
    wire [31:0]temp;

// debouncer_clock debouncer_clock (
//        .i_Clk(clk_100mhz),
//        .i_Switch(button),
//        .o_Switch(clk)
// );
    
//    Clock_slowed clk_slow_inst(
//        .clk_100mhz(clk_100mhz), 
//        .rst(rst),
//        //.clk_1sec(clk),
//        .clk_1msec(clk_1msec)
//    );
    
//    Multplex_Reg_Disp displaying_ALU(
//        .clk(clk_100mhz), 
//        .rst(rst),
//        .inp_reg(ALU_ResultM),
//        .Anode(anode),
//        .SSD_out(SSD)
//    );

//    assign   Data_Mem_display_reg   =  (clk == 1 | rst == 0)? 1'b1:1'b0;
        
    // Module Initiation
    // Fetch Stage
    assign clk = clk_100mhz;
    fetch_cycle Fetch (
                        .clk(clk), 
                        .rst(rst),
                        .CLR(FlushD), 
                        .EN(~StallF),
                        .PCSrcE(PCSrcE), 
                        .PCTargetE(PCTargetE), 

                        .InstrD(InstrD), 
                        .PCD(PCD), 
                        .PCPlus4D(PCPlus4D),
                        .temp(temp)
                    );

    // Decode Stage
    decode_cycle Decode (
                        .clk(clk), 
                        .rst(rst), 
                        .EN(~StallD),
                        .CLR(FlushE),
                        
                        .InstrD(InstrD), 
                        .PCD(PCD), 
                        .PCPlus4D(PCPlus4D), 
                        .RegWriteW(RegWriteW), 
                        .RDW(RDW), 
                        .ResultW(ResultW), 
                        
                        
                        .RegWriteE(RegWriteE), 
                        .ALUSrcE(ALUSrcE), 
                        .MemWriteE(MemWriteE), 
                        .ResultSrcE(ResultSrcE),
                        .BranchE(BranchE),  
                        .ALUControlE(ALUControlE), 
                        .RD1_E(RD1_E), 
                        .RD2_E(RD2_E),
                        .Imm_Ext_E(Imm_Ext_E), 
                        .RD_E(RD_E), 
                        .PCE(PCE), 
                        .PCPlus4E(PCPlus4E),
                        .RS1_D(RS1_D),
                        .RS2_D(RS2_D),
                        .RS1_E(RS1_E),
                        .RS2_E(RS2_E),
                        
                        .MACControl_E(MACControlE),
                        .MACDM_E(MACDME)
                    );

    // Execute Stage
    execute_cycle Execute (
                        .clk(clk), 
                        .rst(rst), 
                        .CLR(/*FlushE*/1'b0),
                        .RegWriteE(RegWriteE), 
                        .ALUSrcE(ALUSrcE), 
                        .MemWriteE(MemWriteE), 
                        .ResultSrcE(ResultSrcE), 
                        .BranchE(BranchE), 
                        .ALUControlE(ALUControlE), 
                        .RD1_E(RD1_E), 
                        .RD2_E(RD2_E), 
                        .Imm_Ext_E(Imm_Ext_E), 
                        .RD_E(RD_E), 
                        .PCE(PCE), 
                        .PCPlus4E(PCPlus4E), 
                        .PCSrcE(PCSrcE), 
                        .PCTargetE(PCTargetE), 
                        .RegWriteM(RegWriteM), 
                        .MemWriteM(MemWriteM), 
                        .ResultSrcM(ResultSrcM),
                        
                        .MACControl_E(MACControlE),
                        .MACDM_E(MACDME),
                        
                        //outputs 
                        .RD_M(RD_M), 
                        .PCPlus4M(PCPlus4M), 
                        .WriteDataM(WriteDataM), 
                        .ALU_ResultM(ALU_ResultM),
                        .ResultW(ResultW),
                        .ForwardA_E(ForwardAE),
                        .ForwardB_E(ForwardBE),
                        
                        .MACControl_M(MACControlM),
                        .MACDM_M(MACDMM)                        
                    );

    // Memory Stage
    memory_cycle Memory (
                        .clk(clk), 
                        .rst(rst), 
                        .RegWriteM(RegWriteM), 
                        .MemWriteM(MemWriteM), 
                        .ResultSrcM(ResultSrcM), 
                        .RD_M(RD_M), 
                        .PCPlus4M(PCPlus4M), 
                        .WriteDataM(WriteDataM), 
                        .ALU_ResultM(ALU_ResultM), 
                        
                        .MACControl_M(MACControlM),
                        .MACDM_M(MACDMM),   
                        
                        //outputs
                        .RegWriteW(RegWriteW), 
                        .ResultSrcW(ResultSrcW), 
                        .RD_W(RDW), 
                        .PCPlus4W(PCPlus4W), 
                        .ALU_ResultW(ALU_ResultW), 
                        .ReadDataW(ReadDataW)
                    );

    // Write Back Stage
    writeback_cycle WriteBack (
                        .clk(clk), 
                        .rst(rst), 
                        .ResultSrcW(ResultSrcW), 
                        .PCPlus4W(PCPlus4W), 
                        .ALU_ResultW(ALU_ResultW), 
                        .ReadDataW(ReadDataW), 
                        .ResultW(ResultW)
                    );

    // Hazard Unit
    hazard_unit hazard_unit(
                        .rst(rst), 
                        .clk(clk),
                        .RegWriteE(RegWriteE),
                        .RegWriteM(RegWriteM), 
                        .RegWriteW(RegWriteW), 
                        .RdE(RD_E),
                        .RD_M(RD_M), 
                        .RD_W(RDW), 
                        .RS1_D(RS1_D),
                        .RS2_D(RS2_D),
                        .Rs1_E(RS1_E), 
                        .Rs2_E(RS2_E),
                        .ResultSrcE(ResultSrcE),
                        .ResultSrcM(ResultSrcM),
                        .PCSrcE(PCSrcE),
                        .BranchE(BranchE),
                         
                        .ForwardAE(ForwardAE), 
                        .ForwardBE(ForwardBE),
                        .StallF(StallF),
                        .StallD(StallD),
                        .FlushD(FlushD),
                        .FlushE(FlushE)

                        );
              
endmodule













