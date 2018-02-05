`timescale 1ns / 1ps

module uart(
    input reset_all,
    input main_clock,            /*the main clock of the system*/
    /*transmitter---------------------------------------------------------------------------------------------*/
    input [7:0]tx_data,          /*the data to send*/
    input tx_start,              /*to start sending pull this HIGH*/
    input tx_clock,              /*transmitter clock*/
    output tx_serial,            /*transmiting line*/
    output tx_done,              /*indication for complete sending*/
    output tx_free,              /*indication for free transmition*/
    /*receiver------------------------------------------------------------------------------------------------*/
    input rx_clock,                 /*receiver clock*/
    input rx_serial,                /*receiving line*/
    output rx_free,                 /*indication for free receiver*/
    output rx_done,                 /*indication for receiving completed successfully*/
    output [7:0]received_data,     /*register of received data*/
    /*digital clock-------------------------------------------------------------------------------------------*/
//    input clock,                    /*clock for the digital clock*/
//    input set_clock,                /*active high to set the clock to a spicified time and date*/
//    input [5:0]seconds_in,
//    input [5:0]minutes_in,
//    input [4:0]hours_in,
//    input [4:0]days_in,
//    input [3:0]months_in,
//    output [5:0]seconds,            /*seconds*/
//    output [5:0]minutes,            /*minutes*/
//    output [4:0]hours,              /*hours*/
//    output [4:0]days,               /*days*/
//    output [3:0]months,             /*months*/
//    output start_uart_time,         /*connect this to tx_start to start transmition using timer*/
    /*temerature sensor---------------------------------------------------------------------------------------*/
//    input [7:0]sensor_signal,       /*sensor reading input*/
//    output alarm,                   /*alarm line*/
//    output start_uart_temp,         /*to enable sending*/
//    output en_system,               /*switch the system on/off*/
//    output [7:0]send_temp,          /*temperature to send to pc*/
    /*frequency divider---------------------------------------------------------------------------------------*/
    input [29:0]tx_clock_length,    /*the wave length of new clock*/
    input [29:0]rx_clock_length,    /*the wave length of new clock*/
    output new_tx_clock,            /*the divider's new clock output*/
    output new_rx_clock             /*the divider's new clock output*/
    /*MCU----------------------------------------------------------------------------------------------------*/
//    input MCU_clock,
//    output start_uart
    );
    
    assign rx_serial = tx_serial;
//    assign tx_start = start_uart;
    assign tx_clock = new_tx_clock;
    assign rx_clock = new_rx_clock;
//    assign MCU_clock = main_clock;
    
//    frequency_divider TX_clock(main_clock,tx_clock_length,reset_all,new_tx_clock);
//    frequency_divider RX_clock(main_clock,rx_clock_length,reset_all,new_rx_clock);

    transmitter TX(tx_data,tx_start,tx_clock,reset_all,tx_serial,tx_done,tx_free);
    receiver RX(rx_clock,rx_serial,reset_all,rx_free,rx_done,received_data);
    
//    clock_generator time_counter(clock,reset_all,set_clock,seconds_in,minutes_in,hours_in,days_in,months_in,
//                                    seconds,minutes,hours,days,months,start_uart_time);
    
//    temperature_sensor temp_sensor(sensor_signal,reset_all,alarm,start_uart_temp,en_system,send_temp);
    
//    MCU mcu(MCU_clock,reset_all,send_temp,start_uart_time,start_uart_temp,tx_done,tx_data,start_uart);
endmodule
