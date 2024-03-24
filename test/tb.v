`timescale 1ns / 1ps

module tb();

    parameter half_cycle=5;
    
    reg clk;
    reg rst;
    reg countup;
    
    code cnt(clk,rst,countup);
        
    initial begin
        rst = 0;
        clk = 0;
        countup = 0;
    end
    
    always
        #half_cycle clk=!clk;
        
    initial begin
        rst=1;
        #30 rst=0;
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;

        #30 countup=1;
        #30 countup=0;
        
        #60 rst=1;
        #30 rst=0;

        countup=1;
        #30 countup=0;
        
        #30 countup=1;
        #30 countup=0;

        #1000 $finish;
    end
endmodule
