`timescale 1ns / 1ps

module test_bench;
reg S, R, en, rst;
wire Q;

  SR_latch dut(en,rst,S,R,Q);

 initial begin
    $dumpfile("SR_latch.vcd");
    $dumpvars(0,test_bench);
        rst=1;
        S = 0;
        R = 0;
        en = 0;
        #10;
        rst=0;
        en=1;
    end
    
    always begin
        S=0;
        R=0;
        #10;
        S=0;
        R=1;
        #10;
        S=1;
        R=0;
        #10;
        S=1;
        R=1;
        #10;

    end
  initial begin
  $monitor("\t en: %d  S: %d  R: %d  Q: %d", en,S,R,Q);
  #90 $finish;
  end
endmodule