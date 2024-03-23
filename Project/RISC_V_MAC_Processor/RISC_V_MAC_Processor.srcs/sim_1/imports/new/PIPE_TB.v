
module Pipelined_Top_Testbench();
   
   reg clk=0, rst;
    
    Pipeline_top uut(
        .clk_100mhz(clk), 
        .rst(rst), 
        .Data_Mem_display_reg(), 
        .anode(), 
        .SSD()
    );
       always #5 clk = ~clk;
           
       initial begin
           rst <= 1'b0;
           #20;
           rst <= 1'b1;
           #2250                                                                       
           $finish;    
       end

endmodule