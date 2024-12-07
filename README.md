# Vending Machine
This project implements a digital vending machine using **Verilog HDL**. The design includes multiple functional modules for managing item selection, payment processing, and item dispensing. 

---

## Features
- **Multi-Module Design**: Modular architecture for scalability and clarity.
- **Item Selection**: Supports multiple item categories.
- **Payment Processing**: Simulates cash acceptance.
- **Item Dispensing**: Ensures accurate delivery of selected items.
- **Error Handling**: Handles insufficient payment and out-of-stock scenarios.

--- 

## Project Workflow
1. **RTL Design**:
   - Developed using **Verilog** with a hierarchical approach.
   - Modularized design for easy extensibility.

2. **Functional Verification**:
   - Created a comprehensive **testbench** to verify the design functionality.
   - Simulated using **Vivado** to ensure correctness under different scenarios.

3. **Synthesis**:
   - Synthesized the design using **Vivado**, generating a netlist for implementation.
   - Verified synthesis results for timing and resource utilization.

4. **Timing Analysis**:
   - Conducted pre-layout **static timing analysis (STA)** to ensure timing closure.
   - Focused on setup and hold checks for design reliability.

---

## Files included
1.  **vendingmachine.v**: Contains the verilog code for the vending machine  (top level module)
2.  **cash_checker.v**: Contains the verilog code for verifying input cash
3.  **inventory_manager.v**: Contains the verilog code for managing the vending machine inventory
4.  **product_cost_calculator.v**: Contains the verilog code for calculating cost of products in the vending machine
5.  **vendingmachine_tb.v**: Contains the verilog code for testbench to verify the design functionality 
6.  **vending_machine_constraints.xdc**: Contains constraints defined for the vending machine.
7.  **vending_machine**: Containts netlist information
8.  **vending_machine_timing_report**: Contains timing report for the vending machine
9.  **vending_machine_utilization_report**: Contains utilization report for the vending machine

   

