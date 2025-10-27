# Project 1: 16-bit ALU (Behavioral vs. Structural)

This project involves the design, simulation, and synthesis of a 16-bit Arithmetic Logic Unit (ALU) for the Digital Logic Design course.

The primary goal was to compare two different design methodologies: **Behavioral** vs. **Structural (Hardware-Oriented)**.

### ALU Specifications

* **Inputs:** `inA[15:0]`, `inB[15:0]` (16-bit signed integers), `inC` (carry input), `opc[2:0]` (3-bit opcode).
* **Outputs:** `outW[15:0]` (16-bit result), `zer` (zero flag), `neg` (negative flag).

### Implemented Functions

The ALU supports 8 functions based on the opcode, including:
* `outW = inA + inB + inC`
* `outW = 2sComp(inA)`
* `outW = inA & inB` (Bitwise AND)
* `outW = inA | inB` (Bitwise OR)
* `outW = {inA[7:0], inB[7:0]}` (Concatenation)

### Design & Analysis Methodology

1.  **Behavioral Model:**
    * Implemented in SystemVerilog using a single `always` block and a `case` statement to describe the ALU's behavior functionally.

2.  **Structural (Hardware-Oriented) Model:**
    * Manually designed at the hardware level, focusing on sharing components (like adders and logic gates) to create a more optimized circuit.

3.  **Verification & Comparison:**
    * Both designs were verified using pre-synthesis and post-synthesis simulations.
    * The final designs were synthesized using **Yosys** to compare their performance in terms of gate utilization and timing.
