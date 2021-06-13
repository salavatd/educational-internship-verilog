`timescale 1ns / 1ps

module top_tb;

  // Frequency 50 MHz
  localparam CLK_FREQ_MHZ   = 50;
  localparam CLK_PERIOD     = 1000 / CLK_FREQ_MHZ;
  localparam CLK_SEMIPERIOD = 1000 / 2  / CLK_FREQ_MHZ;

  // Clock and reset
  reg        clk50m_i;
  reg        rst_n_i;

  // Input data
  reg  [3:0] key_i;
  reg        enable_signal_i;

  // Output data
  wire [3:0] led_o;

  // Generate clock
  initial begin
    clk50m_i = 1;
    forever
      #CLK_SEMIPERIOD clk50m_i = ~clk50m_i;
  end

  // Reset
  initial begin
    rst_n_i = 0;
    rst_n_i = 1;
    #(CLK_PERIOD * 8);
    rst_n_i = 0;
    #CLK_PERIOD rst_n_i = 1;
  end

  integer key_data;
  initial begin
    for (key_data = 15; key_data > 0; key_data = key_data - 1) begin
      key_i = key_data;
      #CLK_PERIOD;
    end
    $finish;
  end
  
  initial begin
    forever begin
       enable_signal_i = 1;
       #CLK_PERIOD;
       enable_signal_i = 0;
      #(CLK_PERIOD * 3);
    end
  end

  // Device under test
  top DUT (
    .clk50m_i        ( clk50m_i        ),
    .rst_n_i         ( rst_n_i         ),

    .key_i           ( key_i           ),
    .enable_signal_i ( enable_signal_i ),

    .led_o           ( led_o           )
  );

endmodule
