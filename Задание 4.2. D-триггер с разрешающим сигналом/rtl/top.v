
module top (

  // Clock and reset
  input        clk50m_i,
  input        rst_n_i,

  // Input data
  input  [3:0] key_i,

  // Output data
  output [3:0] led_o
);

  wire enable_signal;
  
  reg [3:0] data;

  always @( posedge clk50m_i ) begin
    // Reset with active level 0
    if ( ~rst_n_i ) begin
      data <= 0;
    end
    else if ( enable_signal ) begin
      data <= key_i;
    end
  end

  assign led_o = data;


  enable_generator enable_generator (
     .clk50m_i        ( clk50m_i      ),
     .rst_n_i         ( rst_n_i       ),

     .enable_signal_o ( enable_signal )
  );

endmodule
