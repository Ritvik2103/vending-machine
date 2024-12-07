`timescale 1ns / 1ps


module inventory_manager(clk,rst,product_sel,update_inventory,prod1_count,prod2_count,prod3_count);
input wire clk, rst;
input  [1:0] product_sel; // Selected product
input  update_inventory;  // Update inventory signal
output reg [3:0] prod1_count; // Product 1 count
output reg [3:0] prod2_count; // Product 2 count
output reg [3:0] prod3_count;  // Product 3 count


    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Initialize all product counts to 10
            prod1_count <= 4'd10;
            prod2_count <= 4'd10;
            prod3_count <= 4'd10;
        end else if (update_inventory) begin
            case (product_sel)
                2'b00: prod1_count <= prod1_count - 1;
                2'b01: prod2_count <= prod2_count - 1;
                2'b10: prod3_count <= prod3_count - 1;
                default: begin
                prod1_count <= prod1_count;
                prod2_count <= prod2_count;
                prod3_count <= prod3_count;
                end
                
            endcase
        end
    end

endmodule

