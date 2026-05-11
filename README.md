# FPGA Digital Clock using Verilog HDL

## Overview
This project implements a digital clock using Verilog HDL on the EDGE Artix-7 FPGA Development Board. The clock output is displayed using a multiplexed 4-digit 7-segment display.

The project demonstrates concepts of sequential logic, clock division, display multiplexing, and FPGA-based hardware implementation.

---

## Features
- 4-digit 7-segment display interfacing
- Clock division for timing generation
- Multiplexed display control
- Verilog HDL implementation
- FPGA hardware testing
- Simulation and debugging support

---

## Hardware Used
- EDGE Artix-7 FPGA Development Board
- 4-digit 7-segment display

---

## Software & Tools
- Verilog HDL
- Xilinx Vivado
- EDA Playground

---

## Functional Description
The FPGA clock signal is divided to generate slower timing pulses. The system continuously updates seconds and minutes counters and displays them on the 7-segment display using multiplexing techniques.

The design includes:
- Clock divider module
- BCD counter logic
- 7-segment decoder
- Display selection logic

---

## Simulation
The project was simulated and verified using EDA Playground before hardware implementation.

---

## Learning Outcomes
- FPGA design workflow
- Verilog HDL coding
- Sequential circuit implementation
- Display interfacing
- Timing and debugging concepts

---

## Project Images
(Add project images/screenshots here)

---

## Author
Ganesh Marachu
