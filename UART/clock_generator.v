`timescale 1ns / 1ps
`define send_interval 15
`define default_seconds 0
`define default_minutes 0
`define default_hours   0
`define default_days    1
`define default_months  1

module clock_generator(
    input CLK,
    input reset,
    input set_clock,
    input [5:0]seconds_in,
    input [5:0]minutes_in,
    input [4:0]hours_in,
    input [4:0]days_in,
    input [3:0]months_in,
    output reg [5:0]seconds,
    output reg [5:0]minutes,
    output reg [4:0]hours,
    output reg [4:0]days,
    output reg [3:0]months,
    output reg start_uart
    );  
        
    reg [8:0]counter;
    
    always @(posedge CLK or posedge reset) begin /*begin always*/        
        if (reset) begin
            seconds <= `default_seconds;
            minutes <= `default_minutes;
            hours <= `default_hours;
            days <= `default_days;
            months <= `default_months;
            counter <= 0;
            start_uart <= 0;
        end
        else if (set_clock) begin
            seconds <= seconds_in;
            minutes <= minutes_in;
            hours <= hours_in;
            days <= days_in;
            months <= months_in;
            counter <= 0;
            start_uart <= 0;
        end
        else begin
        
            if (seconds < 59) begin
                seconds <= seconds + 1;
            end
            else begin /*begin else*/
                seconds <= 0;
                if(minutes < 59)begin
                    minutes <= minutes + 1;
                    counter <= counter + 1;
                end
                else begin
                    minutes <= 0;
                    if (hours < 23) begin
                        hours <= hours + 1;
                    end
                    else begin
                        hours <= 0;
                        if (days < 30) begin
                            days <= days + 1;
                        end
                        else begin
                            days <= 1;
                            if (months < 12)begin
                                months <= months + 1;
                            end
                            else begin
                                months <= 1;
                            end
                        end
                    end
                end
            end /*end else*/
            
        end
    end /*end always*/
    
    always @(posedge CLK)begin /*begin 2nd always*/
        if (counter == `send_interval) begin
            start_uart <= 1;
            counter <= 0;
        end
        else begin
            start_uart <= 0;
        end
    end /*end 2nd always*/
    
endmodule
