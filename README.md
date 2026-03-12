# RTL-to-GDSII OpenROAD Flow Exploration

## Overview
This project explores the early stages of the digital ASIC design flow using open-source EDA tools. A 32-bit combinational ALU written in Verilog is used as the reference design to demonstrate the transition from RTL to a synthesized gate-level implementation.

The project focuses on understanding how RTL is verified, synthesized, and prepared for backend physical design exploration in a modern ASIC flow.

## Design Description
The design implemented in this project is a 32-bit combinational ALU supporting the following operations:

- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Shift left
- Shift right

## Flow Followed
1. RTL design in Verilog
2. Functional verification using Icarus Verilog
3. Waveform inspection using GTKWave
4. Logic synthesis using Yosys
5. Gate-level netlist generation
6. Logic schematic generation
7. Study of backend RTL-to-GDSII flow stages including floorplanning, placement, routing, timing analysis, and GDSII generation concepts

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- OpenROAD
- KLayout

## Project Structure
- `rtl/` - Verilog RTL design and testbench
- `scripts/` - synthesis script
- `reports/` - generated netlist and synthesis report
- `docs/` - project notes
- `screenshots/` - waveform and synthesized schematic images

## Synthesis Results
Tool used: **Yosys 0.9**

Generated gate-level netlist:
- `reports/alu_netlist.v`

Synthesis statistics:
- 646 logic cells
- 618 wires
- 713 wire bits

Main gate types generated:
- AND
- ANDNOT
- AOI3
- AOI4
- NAND
- NOR
- NOT
- OAI3
- OAI4
- OR
- ORNOT
- XOR
- XNOR

## Key Observations
The arithmetic and logical RTL operations were transformed into a combinational gate-level network during synthesis. No latches or memories were inferred, confirming a purely combinational ALU implementation.

The generated schematic illustrates how even a simple RTL description expands into a large logic network after synthesis.

## Visual Artifacts
The repository includes:
- Functional waveform screenshot (`alu_waveform.png`)
- Synthesized logic schematic (`alu_schematic.png`)

## Learning Outcome
This project helped build practical understanding of:
- functional verification of RTL
- synthesis of behavioral Verilog into gate-level logic
- interpretation of synthesis statistics
- relationship between RTL, netlists, and physical-design flow stages

## Future Extension
This project can be extended by integrating a complete backend flow using OpenROAD/OpenLane to perform floorplanning, placement, routing, and layout generation for a small synthesized block.
