
module top (

  // Clock and reset
  input         clk_i,
  input         rstn_i,

  // Input data
  input         data_i,

  // Output data
  output [15:0] crc16_o
);
  
  reg [15:0] crc16;

  always @(posedge clk_i or negedge rstn_i) begin
    if ( ~rstn_i ) begin
      crc16 <= 0;
    end
    else begin
      crc16[0] <= data_i ^ crc16[15];
      crc16[1] <= crc16[0];
      crc16[2] <= data_i ^ crc16[1] ^ crc16[15];
      crc16[14:3] <= crc16[13:2]; 
      crc16[15] <= data_i ^ crc16[14] ^ crc16[15];
    end
  end

  assign crc16_o = crc16;

endmodule
