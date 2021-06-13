`timescale 1ns / 1ps

module top_tb;

  localparam PERIOD = 50;

  // Input data
  reg select_i;
  
  reg  data_0_i;
  reg  data_1_i;

  // Output data
  wire data_o;

  // Select
  initial begin
    select_data = 0;
    forever begin
      #(PERIOD * 10);
      select_i = ~select_i;
    end
  end

  // First data
  initial begin
    data_0_i = 1;
  end

  // Second data
  initial begin
    repeat (50) begin
      data_1_i = $random;
      #PERIOD;
    end
    $finish;
  end

  // Device under test
  top DUT (
    .select_i ( select_i ),

    .data_0_i ( data_0_i ),
    .data_1_i ( data_1_i ),

    .data_o   ( data_o   )
  );

endmodule
