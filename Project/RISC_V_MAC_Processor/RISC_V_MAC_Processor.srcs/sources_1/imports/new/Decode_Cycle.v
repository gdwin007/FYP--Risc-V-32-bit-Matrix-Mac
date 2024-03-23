

module decode_cycle(clk, rst, EN, CLR, InstrD, PCD, PCPlus4D, RegWriteW, RDW, ResultW, RegWriteE, ALUSrcE, MemWriteE, ResultSrcE,
    BranchE,  ALUControlE, RD1_E, RD2_E, Imm_Ext_E, RD_E, PCE, PCPlus4E, RS1_D, RS2_D, RS1_E, RS2_E, MACControl_E, MACDM_E);

    // Declaring I/O
    input clk, rst,EN, CLR, RegWriteW;
    input [4:0]  RDW;
    input [31:0] InstrD, PCD, PCPlus4D, ResultW;
//    input [19:0] M_A;
    
    output RegWriteE, ALUSrcE, MemWriteE, ResultSrcE, BranchE;
    output [5:0]  ALUControlE;
    output [31:0] RD1_E, RD2_E, Imm_Ext_E;
    output [4:0]  RS1_D, RS2_D, RS1_E, RS2_E, RD_E;
    output [31:0] PCE, PCPlus4E;
    
    output [3:0]MACControl_E;
    output [1:0]MACDM_E;

    // Declare Interim Wires
    wire RegWriteD,ALUSrcD,MemWriteD,ResultSrcD,BranchD;
    wire [1:0] ImmSrcD;
    wire [5:0] ALUControlD;
    wire [31:0] RD1_D, RD2_D, Imm_Ext_D;
    wire [3:0]MACControlD;
    wire [1:0] MACDMD;
    

    // Declaration of Interim Register
    reg RegWriteD_r,ALUSrcD_r,MemWriteD_r,ResultSrcD_r,BranchD_r;
    reg [5:0] ALUControlD_r;
    reg [31:0] RD1_D_r, RD2_D_r, Imm_Ext_D_r;
    reg [4:0] RS1_D_r, RS2_D_r;
    reg [5:0] RD_D_r;
    reg [31:0] PCD_r, PCPlus4D_r;
    reg [3:0]MACControlD_r;
    reg [1:0] MACDMD_r;
    
    
    wire [2:0]funct3_intermediate_value;
    wire [6:0]funct7_intermediate_value;
    wire [4:0]A1_intermediate_value;
    wire [4:0]A2_intermediate_value;
    wire [19:0]M_A_intermediate_value;
    
    wire MAC_OP_D;
    assign MAC_OP_D = (InstrD[6:0] == 7'b1110111 ) ? 1'b1 : 1'b0;
    
    assign funct3_intermediate_value = ( MAC_OP_D ) ? InstrD[9:7]   : InstrD[14:12] ;
    assign funct7_intermediate_value = ( MAC_OP_D ) ? 0             : InstrD[31:25] ;
    assign A1_intermediate_value     = ( MAC_OP_D ) ? 0             : InstrD[19:15] ;
    assign A2_intermediate_value     = ( MAC_OP_D ) ? 0             : InstrD[24:20] ;
    assign M_A_intermediate_value    = ( MAC_OP_D ) ? InstrD[29:10] : 0 ;
    
    // Initiate the modules
    // Control Unit
    Control_Unit_Top control (
                            .Op(InstrD[6:0]),
                            .funct3(funct3_intermediate_value /*InstrD[14:12] */),
                            .funct7(funct7_intermediate_value /*InstrD[31:25]*/),
                            
                            .MAC_OP(MAC_OP_D),  //different than MAC_OP, MAC_OP is a signal which only tells if its a matrix instruction or not
                            .MACOP(InstrD[31:30]),//whereas MACOP tells which type of matrix instruction it is: load, clear, operation or store
                            
                            .RegWrite(RegWriteD),
                            .ImmSrc(ImmSrcD),
                            .ALUSrc(ALUSrcD),
                            .MemWrite(MemWriteD),
                            .ResultSrc(ResultSrcD),
                            .Branch(BranchD),
                            .ALUControl(ALUControlD),
                            
                            .MACControl(MACControlD),
                            .MACDM(MACDMD)
                            );

    // Register File
    Register_File Register_File (
                        .clk(clk),
                        .rst(rst),
                        .A1(A1_intermediate_value /*InstrD[19:15]*/),
                        .A2(A2_intermediate_value /*InstrD[24:20]*/),
                        .A3(RDW),
                        .WE3(RegWriteW),
                        .WD3(ResultW),
                        .M_A(M_A_intermediate_value),
                        
                        .RD1(RD1_D),
                        .RD2(RD2_D)
                        );

    // Sign Extension
    Sign_Extend Sign_Extend (
                        .In(InstrD[31:0]),
                        .Imm_Ext(Imm_Ext_D),
                        .ImmSrc(ImmSrcD)
                        );

    // Declaring Register Logic
    always @(posedge clk or negedge rst) begin
        if(rst == 1'b0) begin
                    RegWriteD_r     <= 1'b0;
                    ALUSrcD_r       <= 1'b0;
                    MemWriteD_r     <= 1'b0;
                    ResultSrcD_r    <= 1'b0;
                    BranchD_r       <= 1'b0;
                    ALUControlD_r   <= 3'b000;
                    RD1_D_r         <= 32'h00000000; 
                    RD2_D_r         <= 32'h00000000; 
                    Imm_Ext_D_r     <= 32'h00000000;
                    RD_D_r          <= 5'h00;
                    PCD_r           <= 32'h00000000; 
                    PCPlus4D_r      <= 32'h00000000;
                    RS1_D_r         <= 5'h00;
                    RS2_D_r         <= 5'h00;   
                    MACControlD_r   <= 0;
                    MACDMD_r        <= 0;
        end
        else if (EN == 1'b1) begin
                 if (CLR == 1'b1) begin
                        RegWriteD_r     <= 1'b0;
                        ALUSrcD_r       <= 1'b0;
                        MemWriteD_r     <= 1'b0;
                        ResultSrcD_r    <= 1'b0;
                        BranchD_r       <= 1'b0;
                        ALUControlD_r   <= 3'b000;
                        RD1_D_r         <= 32'h00000000; 
                        RD2_D_r         <= 32'h00000000; 
                        Imm_Ext_D_r     <= 32'h00000000;
                        RD_D_r          <= 5'h00;
                        PCD_r           <= 32'h00000000; 
                        PCPlus4D_r      <= 32'h00000000;
                        RS1_D_r         <= 5'h00;
                        RS2_D_r         <= 5'h00;    
                        
                        MACControlD_r   <= 0;
                        MACDMD_r        <= 0;         
                end
                else if (CLR == 1'b0) begin
                        RegWriteD_r    <= RegWriteD;
                        ALUSrcD_r      <= ALUSrcD;
                        MemWriteD_r    <= MemWriteD;
                        ResultSrcD_r   <= ResultSrcD;
                        BranchD_r      <= BranchD;
                        ALUControlD_r  <= ALUControlD;
                        RD1_D_r        <= RD1_D; 
                        RD2_D_r        <= RD2_D; 
                        Imm_Ext_D_r    <= Imm_Ext_D;
                        RD_D_r         <= InstrD[11:7];
                        PCD_r          <= PCD; 
                        PCPlus4D_r     <= PCPlus4D;
                        RS1_D_r        <= InstrD[19:15];
                        RS2_D_r        <= InstrD[24:20];
                        
                        MACControlD_r   <= MACControlD;
                        MACDMD_r        <= MACDMD;
               end
            end         
        end
    
    
    // Output asssign statements
    assign RegWriteE =      RegWriteD_r;
    assign ALUSrcE =        ALUSrcD_r;
    assign MemWriteE =      MemWriteD_r;
    assign ResultSrcE =     ResultSrcD_r;
    assign BranchE =        BranchD_r;
    assign ALUControlE =    ALUControlD_r;
    assign RD1_E =          RD1_D_r;
    assign RD2_E =          RD2_D_r;
    assign Imm_Ext_E =      Imm_Ext_D_r;
    assign RD_E =           RD_D_r ;
    assign PCE =            PCD_r;
    assign PCPlus4E =       PCPlus4D_r;
    assign RS1_E =          RS1_D_r;
    assign RS2_E =          RS2_D_r;
    
    assign RS1_D =          InstrD[19:15];
    assign RS2_D =          InstrD[24:20];
    
    assign MACControl_E =    MACControlD_r;
    assign MACDM_E =         MACDMD_r;

endmodule