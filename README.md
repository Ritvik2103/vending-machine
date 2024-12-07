# Vending Machine Design

This repository contains the **Verilog** implementation of a vending machine, built and tested using **Vivado**. The design supports three products with different costs and maintains inventory, cash balance, and dispense logic.

---

## Features

- **Product Selection:**
  - Supports three products selected using a 2-bit signal (`product_sel`): 
    - `00` for Product 1.
    - `01` for Product 2.
    - `10` for Product 3.
  - Each product has a specific cost (`product_cost`).

- **Cash Handling:**
  - Verifies if sufficient cash is provided to purchase the selected product.
  - Calculates the balance to return if sufficient cash is available.

- **Inventory Management:**
  - Tracks the count of each product (`prod1_count`, `prod2_count`, `prod3_count`).
  - Updates the inventory when a product is dispensed.
  - Initializes product counts to a default value of 10.

- **Dispense Control:**
  - Dispenses the product if:
    - Sufficient cash is provided.
    - The selected product is in stock.

- **Timing Constraints:**
  - Proper constraints are applied to ensure synthesis and timing closure.
  - Constraints are defined in the `vending_machine_constraints.xdc` file, included in the repository.

---

## Modules Overview

### 1. Vending Machine (`vendingmachine.v`)
The top-level module that integrates:
- **Cash Checker:** Validates sufficient cash and calculates the balance.
- **Product Cost Calculator:** Assigns the cost of the selected product.
- **Inventory Manager:** Tracks and updates inventory counts.

### 2. Product Cost Calculator (`product_cost_calculator.v`)
- Outputs the cost of the selected product:
  - `00`: 10 units.
  - `01`: 20 units.
  - `10`: 40 units.

### 3. Cash Checker (`cash_checker.v`)
- Validates if the cash provided is sufficient for the selected product.
- Outputs:
  - `sufficient_cash`: Indicates if the cash provided meets the product cost.
  - `balance`: Calculates the balance to return after the transaction.

### 4. Inventory Manager (`inventory_manager.v`)
- Tracks and updates the count of products.
- Features:
  - Initializes each product count to `10` on reset.
  - Reduces the product count when a product is dispensed.

---

## Simulation and Verification

### Testbench
A testbench (`vendingmachine_tb.v`) is provided to verify functionality. It:
- Stimulates the vending machine with various inputs.
- Verifies:
  - Proper product dispensing.
  - Correct cash validation and balance calculation.
  - Inventory management logic.

---

## Synthesis and STA

- **Synthesis:**  
  - The design was synthesized in Vivado to generate a gate-level netlist.
  - Output netlist file: `vending_machine.dcp`.

- **Reports:**
  - **Timing Report:** Pre-layout timing results are stored in `vending_machine_timing_report.txt`.
  - **Resource Utilization Report:** FPGA resource usage is documented in `vending_machine_utilization_report.txt`.

- **Constraints:**
  - Timing and design constraints are defined in `vending_machine_constraints.xdc`:
    - Clock period.
    - Input/output delays.
    - Reset setup requirements.

- **Pre-Layout STA:**  
  - Timing analysis confirmed no setup or hold violations.
  - Results verified for a clock period of `8.0 ns`.

---
