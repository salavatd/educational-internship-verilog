`timescale 1ns / 1ps

module state_machine_tb;

  // Frequency 100 MHz
  localparam CLK_FREQ_MHZ   = 100;
  localparam CLK_PERIOD     = 1000 / CLK_FREQ_MHZ;
  localparam CLK_SEMIPERIOD = 1000 / 2  / CLK_FREQ_MHZ;

  // Clock and reset
  reg        clk_i;
  reg        rstn_i;

  // Inputs data
  reg        start_i;
  reg        stop_i;

  // Outputs data
  wire [7:0] counter_o;
  wire       valid_o;

  // Generate clock
  initial begin
    clk_i = 1;
    forever
      #CLK_SEMIPERIOD clk_i = ~clk_i;
  end

  // Reset
  initial begin
    rstn_i = 0;
    rstn_i = 1;
  end
  
  initial begin
    start_i = 0;
    stop_i = 0;
    #(CLK_SEMIPERIOD * 25);
    start_i = 1;
    #CLK_PERIOD;
    start_i = 0;
    #(CLK_SEMIPERIOD * 25);
    stop_i = 1;
    #CLK_PERIOD;
    stop_i = 0;
    #(CLK_SEMIPERIOD * 25);
    $finish;
  end

  // Device under test
  state_machine DUT (
    .clk_i     ( clk_i     ),
    .rstn_i    ( rstn_i    ),


    .start_i   ( start_i   ),
    .stop_i    ( stop_i    ),

    .counter_o ( counter_o ),
    .valid_o   ( valid_o   )
  );

endmodule
