`timescale 1ps / 1ps
/*CPU frequency = 50 MHz*/
/*Baud Rate = 115200 bits per second*/
/*each bit needs (50,000,000)/(115,200) = 434 cycles*/
//`define clocks_per_bit 4 /*I'm using only 4 cycles for each bit to make testing easier*/
`define IDLE      2'b00
`define START_BIT 2'b01
`define DATA_BITS 2'b10
`define STOP_BIT  2'b11

module transmitter(
    input [7:0]in_data,     /*input data to send to the other side*/
    input start_tx,         /*start button/flag positive edge*/
    input CLK,              /*main clock of the system*/
    input reset,            /*reset active high*/
    output reg tx_serial,   /*data out line*/
    output reg done,        /*flag to indicate the transmitter is done sending*/
    output reg free         /*flag to indicate the module is free or not*/
    );
    
    reg start;                /*start flag*/
    reg [7:0]tx_data;         /*register of data to send*/
    reg [1:0]current_state;   /*the current state of the module*/
    reg [3:0]tx_index;        /*index of the bit to send*/
    
    always @(start_tx)begin
        start <= 1;
    end
        
    always @(posedge CLK or posedge reset) begin /*begin always*/
        if (reset) begin
            start <= 0;
            tx_data <= 0;
            current_state <= `IDLE;
            tx_index <= 0;
            tx_serial <= 1;
            done <= 0;
            free <= 1;
        end
        else begin
        case (current_state) /*begin case*/
        
            `IDLE : begin /*begin IDLE*/
                /*IDLE state >>>> tx_serial = 1*/
                tx_serial <= 1;
                tx_index <= 0;
                done <= 0;
                if (start) begin 
                    current_state <= `START_BIT; /*start bit = 0*/
                    free <= 0;
                end /*end if*/
                else begin
                    current_state <= `IDLE;
                    free <= 1;
                end
            end /*end IDLE*/
            
            `START_BIT : begin /*begin START_BIT*/
                /*START BIT >>>>> tx_serial = 0*/
                tx_serial <= 0;
                /*wait for bit transmition to complete*/
                current_state <= `DATA_BITS;
                tx_data <= in_data;
            end /*end START_BIT*/
            
            `DATA_BITS : begin /*begin DATA_BITS*/
                /*check if all 8 bits of tx_data are sent*/
                if (tx_index <= 7) begin 
                    current_state <= `DATA_BITS;
                    tx_serial <= tx_data[tx_index];
                    /*wait for bit transmition to complete*/
                    tx_index <= tx_index + 1;
                end
                else begin
                    current_state <= `STOP_BIT;
                    tx_serial <= 1;
                    tx_index <= 0;
                end
            end /*end DATA_BITS*/
            
            `STOP_BIT : begin /*begin STOP_BIT*/
                /*STOP BIT = 1*/
                tx_serial <= 1;
                /*wait for bit transmition to complete*/
                
                    current_state <= `IDLE;
                    done <= 1;
                    start <= 0;
            end /*end STOP_BIT*/
            
            default : begin /*begin default*/
                current_state <= `IDLE;
//                start <= 0;
            end /*end default*/
            
        endcase /*end case*/
        end
    end /*end always*/
    
endmodule
/*tried and tested :)*/
