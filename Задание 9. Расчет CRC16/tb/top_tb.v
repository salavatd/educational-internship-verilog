`timescale 1ns / 1ps

module top_tb;
  
  // Frequency 100 MHz
  localparam CLK_FREQ_MHZ   = 100;
  localparam CLK_PERIOD     = 1000 / CLK_FREQ_MHZ;
  localparam CLK_SEMIPERIOD = 1000 / 2  / CLK_FREQ_MHZ;

  reg         clk_i;
  reg         rstn_i;
  
  reg         data_i;

  wire [15:0] crc16_o;

  reg  [15:0] crc16;

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

  integer i;
  initial begin
    // Пропускаем один такт чтобы успел произойти сброс
    #CLK_PERIOD;

    // Подаем рандомную последовательность длинной 144
    repeat (144) begin
      data_i = $random;
      #CLK_PERIOD;
    end

    // Сохраняем в регистр значение crc для полученной последовательности
    crc16 = crc16_o;

    // Подаем на вход модулю полученную crc для проверки
    for (i = 15; i >= 0; i = i - 1) begin
      data_i = crc16[i];
      #CLK_PERIOD;
    end

    // Проверка
    if ( crc16_o == 0 ) begin
      $display("CRC16 calculated correctly.");
    end
    else begin
      $display("Wrong answer.");
    end

    $finish;
  end

  // Device under test
  top top (
    .clk_i       ( clk_i       ),
    .rstn_i      ( rstn_i      ),

    .data_i      ( data_i      ),

    .crc16_o     ( crc16_o     )
  );

endmodule
