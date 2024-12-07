`timescale 1ns / 1ps


module vendingmachine(clk, rst, product_sel, cash, dispense, product_cost,  balance, prod1_count, prod2_count, prod3_count, update_inventory);
    input  clk;
    input  rst;
    input  [1:0] product_sel;  // Select product: 00, 01, 10 (3 products)
    input  [5:0] cash;   // Cash input
    output   dispense;         // Dispense signal
    output  [5:0] balance;    // Remaining balance
output  [3:0] prod1_count;   // Product 1 count
    output  [3:0] prod2_count;   // Product 2 count
    output  [3:0] prod3_count;  // Product 3 count

    output   [5:0] product_cost;  // Cost of the selected product
    wire sufficient_cash;     // Indicates if cash is sufficient
    output update_inventory;    // Trigger to update inventory
    
    wire [3:0] selected_count; // Count of the selected product

    // Instantiate product cost module
    product_cost_calculator cost_calc (
        .product_sel(product_sel),
        .product_cost(product_cost)
    );

    // Instantiate cash checker module
    cash_checker cash_chk (
        .cash(cash),
        .product_cost(product_cost),
        .sufficient_cash(sufficient_cash),
        .balance(balance)
    );

    // Instantiate inventory manager module
    inventory_manager inv_mgr (
        .clk(clk),
        .rst(rst),
        .product_sel(product_sel),
        .update_inventory(update_inventory),
        .prod1_count(prod1_count),
        .prod2_count(prod2_count),
        .prod3_count(prod3_count)
    );

    // Select the count of the chosen product
    assign selected_count = (product_sel == 2'b00) ? prod1_count :
                            (product_sel == 2'b01) ? prod2_count :
                                                     prod3_count;

    
    assign dispense = sufficient_cash && (selected_count > 0);
    assign update_inventory = dispense;

endmodule

