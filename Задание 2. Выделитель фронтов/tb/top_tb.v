`timescale 1ns / 1ps

module top_tb;

  // Frequency 50 MHz
  localparam CLK_FREQ_MHZ   = 50;
  localparam CLK_PERIOD     = 1000 / CLK_FREQ_MHZ;
  localparam CLK_SEMIPERIOD = 1000 / 2  / CLK_FREQ_MHZ;

  // Clock
  reg  clk;

  // Input data
  reg  in_s;

  // Output data
  wire out_s0;
  wire out_s1;

  // Generate clock
  initial begin
    clk = 1;
    forever
      #CLK_SEMIPERIOD clk = ~clk;
  end

  initial begin
    in_s = 0;
    #(CLK_PERIOD * 20);
    in_s = 1;
    #(CLK_PERIOD * 20);
    in_s = 0;
    #(CLK_PERIOD * 20);
    $finish;
  end

  // Device under test
  top DUT (
    .clk    ( clk    ),

    .in_s   ( in_s   ),

    .out_s0 ( out_s0 ),
    .out_s1 ( out_s1 )
  );

endmodule
