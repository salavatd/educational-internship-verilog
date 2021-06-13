
module top (

  // Input data
  input      [3:0] tens_i,
  input      [3:0] units_i,

  // Output data
  output reg [6:0] number_o,
  output reg       error_o
);

  always @( * ) begin
    /* Если на вход подана запрещенная комбинация,
       то number_o переводится в Z-состояние,
       а error_o выставляется в 1. */
    if ( tens_i > 4'b1001 || units_i > 4'b1001 ) begin
      number_o = 7'bzzzzzzz;
      error_o = 1;
    end
    // Иначе
    else begin
      number_o = { tens_i, 3'b000 } + { tens_i, 1'b0 } + units_i;
      error_o = 0;
    end
  end // endalways

endmodule
