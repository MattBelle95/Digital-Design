`timescale 1ns / 1ps

module top_module_ver(
    input reset_all,
    /*transmitter----------------------------------*/
    input [7:0]data_in,
    input tx_clock ,
    input start_sending,
    output free_tx,
    output done_tx
    /*receiver-------------------------------------*/
   ,input rx_clock,
    output free_rx,
    output done_rx,
    output [7:0]data_out
    );
    
    wire serial_line;
    transmitter TX(.tx_data(data_in),
                   .clock(tx_clock),
                   .reset(reset_all),
                   .start_tx(start_sending),
                   .serial(serial_line),
                   .tx_free(free_tx),
                   .tx_done(done_tx));
                   
    receiver    RX(rx_clock,
                    reset_all,
                    serial_line,
                    free_rx,
                    done_rx,
                    data_out);
    
endmodule
