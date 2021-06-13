`timescale 1ns / 1ps

module top_tb;
  
  // Frequency 100 MHz
  localparam CLK_FREQ_MHZ   = 100;
  localparam CLK_PERIOD     = 1000 / CLK_FREQ_MHZ;
  localparam CLK_SEMIPERIOD = 1000 / 2  / CLK_FREQ_MHZ;

  reg  clk_i;
  reg  rstn_i;
  
  reg  data_i;

  wire scrembled_o;

  wire data_o;

  // Generate clock
  initial begin
    clk_i = 1;
    forever
      #CLK_SEMIPERIOD clk_i = ~clk_i;
  end

  // Reset
  initial begin
    rstn_i = 0;
    #CLK_SEMIPERIOD;
    rstn_i = 1;
  end

  initial begin
    forever begin
      data_i = $random;
      #CLK_PERIOD;
    end
  end

  // Device under test
  top top (
    .clk_i       ( clk_i       ),
    .rstn_i      ( rstn_i      ),

    .data_i      ( data_i      ),

    .scrembled_o ( scrembled_o ),

    .data_o      ( data_o      )
  );

endmodule
