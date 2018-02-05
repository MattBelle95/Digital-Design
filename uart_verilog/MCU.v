`timescale 1ns / 1ps
`define minimum_temp 0
`define maximum_temp 250
`define alarm_temp   200
`define IDLE                              0
`define SEND_FIRST_FRAME                  1
`define WAIT_FOR_FIRST_TRANSMITION_DONE   2
`define SEND_SECOND_FRAME                 3
`define WAIT_FOR_SECOND_TRANSMITION_DONE  4

module MCU(
    input clk,
    input reset,
    input [7:0]temperature,
//    input [5:0]seconds,
//    input [5:0]minutes,
//    input [4:0]hours,
//    input [4:0]days,
//    input [3:0]months,
    input start_uart_time,
    input start_uart_temp,
    input tx_done,
    output reg[7:0]send_data,
    output reg start_uart
    );
    
    reg frame;
    reg ready_to_send;
    reg [2:0]current_state;
    
    always @(posedge start_uart_time) begin /*begin always*/
        ready_to_send <= 1;
    end /*end always*/
    
    always @(posedge clk or posedge reset) begin /*begin always*/
        if (reset) begin
            send_data <= 0;
            start_uart <= 0;
            frame <= 0;
            ready_to_send <= 0;
            current_state <= `IDLE;
        end
        else begin /*begin else*/
        case (current_state)
            `IDLE : begin /*begin IDLE*/
                frame <= 0;
                start_uart <= 0;
                if (ready_to_send || start_uart_temp) begin
                    current_state <= `SEND_FIRST_FRAME;
                end
                else begin
                    current_state <= `IDLE;
                end
            end /*end IDLE*/
            
            `SEND_FIRST_FRAME : begin /*begin SEND_FIRST_FRAME*/
                send_data <= temperature;
                start_uart <= 1;
                ready_to_send <= 0;
                current_state <= `WAIT_FOR_FIRST_TRANSMITION_DONE;
            end /*end SEND_FIRST_FRAME*/
            
            `WAIT_FOR_FIRST_TRANSMITION_DONE : begin /*begin WAIT_FOR_FIRST_TRANSMITION_DONE*/
                if (frame == 0) begin
                    current_state <= `WAIT_FOR_FIRST_TRANSMITION_DONE;
                end
                else if (frame == 1) begin
                    current_state <= `SEND_SECOND_FRAME;
                end
            end /*end WAIT_FOR_FIRST_TRANSMITION_DONE*/
            
            `SEND_SECOND_FRAME : begin /*begin SEND_SECOND_FRAME*/
                send_data <= 8'b00001111/*seconds*/;
                start_uart <= 1;
                current_state <= `WAIT_FOR_SECOND_TRANSMITION_DONE;
            end /*end SEND_SECOND_FRAME*/
            
            `WAIT_FOR_SECOND_TRANSMITION_DONE : begin /*begin WAIT_FOR_SECOND_TRANSMITION_DONE*/
                if (frame == 0) begin
                    current_state <= `IDLE;
                end
                else begin
                    current_state <= `WAIT_FOR_SECOND_TRANSMITION_DONE;
                end
            end /*end WAIT_FOR_SECOND_TRANSMITION_DONE*/
            
            default : begin
                current_state <= `IDLE;
                ready_to_send <= 0;
                frame <= 0;
                send_data <= 0;
                start_uart <= 0;
            end
            
        endcase
        end /*end else*/
    end /*end always*/
    
    always @(posedge tx_done) begin /*begin always*/
        start_uart <= 0;
        if (frame == 0)begin
            frame <= 1;
        end
        else if (frame == 1) begin
            frame <= 0;
        end
    end /*end always*/
        
endmodule
