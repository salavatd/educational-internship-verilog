`timescale 1ns / 1ps

module top_tb;

  localparam PERIOD = 50;

  // Clock and reset
  reg  [3:0] tens_i;
  reg  [3:0] units_i;

  // Output data
  wire [6:0] number_o;
  wire       error_o;


  task assert;
    input [3:0] tens_i;
    input [3:0] units_i;
    input [6:0] number_o;
    input       error_o;
    
    begin
      $write("Input: tens_i = %h, units_i = %h. ", tens_i, units_i);
      $write("Output: number_o = %2d, error_o = %d. ", number_o, error_o);

      if ( tens_i > 9 || units_i > 9 ) begin
        if ( error_o && number_o === 7'bzzzzzzz ) begin
          $display("Result: OK.");
        end
        else begin
          $display("Result: FAILED.");
        end
      end // tens_i > 9 || units_i > 9

      else begin
        if (( number_o % 10 != units_i ) || ( number_o / 10 != tens_i)) begin
          $display("Result: FAILED.");
        end
        else begin
          $display("Result: OK.");
        end
      end // else
    end
  endtask


  integer i, j;
  initial begin
    $display("Test valid data");
    for (i = 0; i < 10; i = i + 1) begin
      for (j = 0; j < 10; j = j + 1) begin
        tens_i = i;
        units_i = j;
        #PERIOD;
        assert(tens_i, units_i, number_o, error_o);
      end
    end

    $display("Test wrong data");
    for (i = 10; i <= 15; i = i + 1) begin
      tens_i = i;
      units_i = 1;
      #PERIOD;
      assert(tens_i, units_i, number_o, error_o);
    end

    for (j = 10; j <= 15; j = j + 1) begin
      tens_i = 1;
      units_i = j;
      #PERIOD;
      assert(tens_i, units_i, number_o, error_o);
    end
    
    $finish;
  end // initial


  // Device under test
  top inst_top (
    .tens_i   ( tens_i   ),
    .units_i  ( units_i  ),

    .number_o ( number_o ),
    .error_o  ( error_o  )
  );

endmodule
