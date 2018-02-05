`timescale 1ps / 1ps

module counter(
    input main_clk,            /*here is the main clock 50 MHz*/
    input reset,               /*when = 1, it makes LED = 0*/
    output reg LED             /*the LED output*/
    );
    
    wire [27:0]clock_length;  /*the number of pulses to change LED make it = 5000000 to get 100ms change (50Mhz*10ms = 5000000)*/
    reg [27:0]counter;
    
    assign clock_length = 50000000;
    
    always @(posedge main_clk or posedge reset) begin /*begin always*/
        if (reset) begin
            LED <= 0;
            counter <= 0;
        end
        else begin
            if (counter < clock_length - 1) begin
                counter <= counter + 1;
            end
            else begin
                counter <= 0;
                LED <= (~LED);
            end
        end
    end /*end always*/
    
endmodule
