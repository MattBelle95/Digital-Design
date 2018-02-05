`timescale 1ns / 1ps
`define minimum_temp 0
`define maximum_temp 250
`define alarm_temp   200

module temperature_sensor(
    input [7:0]sensor_signal,
    input reset,
    output reg alarm,
    output reg start_uart,
    output reg enable_system,
    output reg [7:0]sensor_reading
    );
    
    always @(sensor_signal , reset) begin /*begin always*/
    if (reset) begin
        alarm = 0;
        enable_system = 1;
        start_uart = 0;
        sensor_reading = 0;
    end
    else begin /*begin else*/
    
        sensor_reading = sensor_signal;
    
        if (sensor_reading >= `maximum_temp) begin
            alarm = 1;
            start_uart = 1;
            enable_system = 0;
        end
        
        else if (sensor_reading >= `alarm_temp) begin
            alarm = 1;
            start_uart = 1;
            enable_system = 1;
        end
        else begin
            alarm = 0;
            start_uart = 0;
            enable_system = 1;
        end
    end /*end else*/
    end /*end always*/
    
endmodule
