`timescale 1ns / 1ps


module product_cost_calculator(product_sel, product_cost);
    input  [1:0] product_sel;      // Product selection
    output reg [5:0] product_cost; // Product cost (8 bits)

    always @(*) begin
        // Initialize to avoid uninitialized bits
        product_cost = 6'd0;

        // Assign based on product selection
        case (product_sel)
            2'b00: product_cost = 6'd10; // Product 1 cost
            2'b01: product_cost = 6'd20; // Product 2 cost
            2'b10: product_cost = 6'd40; // Product 3 cost
            default: product_cost = 6'd0; // Ensure all bits are zero for invalid cases
        endcase
    end
endmodule

