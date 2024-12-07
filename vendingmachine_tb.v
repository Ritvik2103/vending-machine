`timescale 1ns / 1ps



module vendingmachine_tb();
 // Inputs to the vending machine
    reg clk;
    reg rst;
    reg [1:0] product_sel;
    reg [5:0] cash;

    // Outputs from the vending machine
    wire dispense, update_inventory;
    wire [5:0] balance;
   wire [5:0]product_cost;
    wire [3:0] prod1_count, prod2_count, prod3_count;

    // Instantiate the vending machine
    vendingmachine uut (
        .clk(clk),
        .rst(rst),
        .product_sel(product_sel),
        .cash(cash),
        .dispense(dispense),
        .balance(balance),
        .prod1_count(prod1_count),
        .prod2_count(prod2_count),
        .prod3_count(prod3_count),
        .update_inventory(update_inventory),.product_cost(product_cost)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10 ns clock period
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;
        product_sel = 2'b00;
        cash =6'd0;

        // Wait for reset to propagate
        #10 rst = 0;

        // Test Case 1: Buy product 1 (prod1_count) with exact cash
        product_sel = 2'b00; // Select product 1
        cash = 6'd10;        // Exact cash
        #10;
        cash= 6'd0;
        #20;
        

        // Test Case 2: Buy product 2 (prod2_count) with excess cash
        product_sel = 2'b01; // Select product 2
         #10;
	cash= 6'd30;
	#10;
    cash= 6'd0;
    #20;
    
        // Test Case 3: Attempt to buy product 3 (prod3_count) with insufficient cash
        product_sel = 2'b10; // Select product 3
        cash = 6'd30;        // Insufficient cash
        #10;

       cash= 6'd45;
	#20;
	

        // Test Case 5: Reset the system and verify inventory reset
        rst = 1;             // Assert reset
        
    end

endmodule
