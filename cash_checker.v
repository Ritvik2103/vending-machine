`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2024 10:40:30
// Design Name: 
// Module Name: cash_checker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cash_checker(cash, product_cost, sufficient_cash, balance);
    input  [5:0] cash;            // Input cash
    input  [5:0] product_cost;     // Cost of selected product
    output  sufficient_cash;    // Sufficient cash signal
    output  [5:0] balance ;       // Balance to return


    assign sufficient_cash = (cash >= product_cost);
    assign balance = (sufficient_cash) ? (cash - product_cost) : cash;

endmodule
