# Project 4 — RTL-to-GDSII Flow Exploration

## Objective
Explore the digital ASIC implementation flow from RTL to physical layout using open-source EDA tools.

## Design Chosen
32-bit combinational ALU in Verilog.

## Why this design
A small arithmetic/logic block is suitable for demonstrating:
- RTL simulation
- logic synthesis
- netlist generation
- backend flow concepts

## Flow to Study
1. RTL design
2. Functional verification
3. Logic synthesis
4. Floorplanning
5. Placement
6. Routing
7. Timing analysis
8. GDSII generation

## Tools
- Verilog
- Icarus Verilog
- GTKWave
- Yosys
- OpenROAD
- KLayout

## Synthesis Results

Tool: Yosys 0.9

Design: 32-bit Combinational ALU

Generated Gate-Level Netlist:
reports/alu_netlist.v

Statistics:
- 646 logic cells
- 618 wires
- 713 wire bits

Main gate types:
AND, XOR, XNOR, NAND, NOR, AOI, OAI, NOT, OR, ANDNOT

Observation:
The arithmetic and logical RTL operations were converted into a combinational network of logic gates during synthesis. No latches or memories were inferred, confirming that the ALU is purely combinational.
