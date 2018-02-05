`timescale 1ps / 1ps
/*CPU frequency = 50 MHz*/
/*Baud Rate = 115200 bits per second*/
/*each bit needs (50,000,000)/(115,200) = 434 cycles*/
`define clocks_per_bit 4 /*I'm using only 4 cycles for each bit to make testing easier*/
`define IDLE      3'b000
`define START_BIT 3'b001
`define DATA_BITS 3'b010
`define STOP_BIT  3'b011
`define DELAY     3'b100

module receiver(
    input CLK,
    input rx_serial,
    input reset,
    output reg free,
    output reg done,
    output reg [7:0]data_received
    );
    
    reg [2:0]current_state;
    reg [3:0]rx_index;
    reg [8:0]clock_cycles;
    
    always @(negedge rx_serial) begin /*begi always*/
        if (current_state == `IDLE) begin
            current_state <= `START_BIT;
            free <= 0;
        end
    end /*end always*/
    
    always @(posedge CLK or posedge reset) begin /*begin always*/
        if (reset) begin
            free <= 1;
            done <= 0;
            data_received <= 0;
            current_state <= `IDLE;
            rx_index <= 0;
            clock_cycles <= 0;
        end
        else begin
        case (current_state) /*begin case*/
        
            `IDLE : begin /*begin IDLE*/
                rx_index <= 0;
                clock_cycles <= 0;
                done <= 0;
                free <= 1;
            end /*end IDLE*/
            
            `START_BIT : begin /*begin START_BIT*/
                if (clock_cycles < (`clocks_per_bit / 2)) clock_cycles <= clock_cycles + 1; /*wait for a half bit time*/
                else begin
                    if (rx_serial == 0) begin /*START BIT detected*/
                        current_state <= `DATA_BITS;
                        clock_cycles <= 0;
                    end
                    else begin /*START BIT not detected*/
                        current_state <= `IDLE;
                    end
                end
            end /*end START_BIT*/
            
            `DATA_BITS : begin /*begin DATA_BITS*/
                if (rx_index <= 7)begin
                    /*wait for a full bit time*/
                    if (clock_cycles < (`clocks_per_bit - 1)) clock_cycles <= clock_cycles + 1;
                    else begin
                        data_received[rx_index] <= rx_serial;
                        rx_index <= rx_index + 1;
                        clock_cycles <= 0;
                    end
                end
                else begin
                    current_state <= `STOP_BIT;
                end
            end /*end DATA_BITS*/
            
            `STOP_BIT : begin /*begin STOP_BIT*/
                rx_index <= 0;
                if (clock_cycles < (`clocks_per_bit - 1)) clock_cycles <= clock_cycles + 1;
                else begin
                    if (rx_serial) begin /*STOP BIT detected*/
                        current_state = `IDLE;
                        done <= 1;
                    end
                    else begin /*STOP BIT not detected*/
                        current_state = `DELAY;
                        done <= 0;
                    end
                end
            end /*end STOP_BIT*/
            
            `DELAY : begin /*begin DELAY*/
                if (rx_serial) begin
                    current_state <= `IDLE;
                end
                else begin
                    current_state <= `DELAY;
                end
            end /*end DELAY*/
            
            default :
                current_state <= `DELAY;
            
        endcase
        end
    end /*end always*/
    
endmodule
