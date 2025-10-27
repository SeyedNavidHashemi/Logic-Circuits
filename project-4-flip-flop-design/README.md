# Project 4: Gate-Level Design of Latches and Flip-Flops

This project focuses on building fundamental sequential memory elements from basic gates and analyzing their detailed timing characteristics.

### Project Goals

1.  **Gate-Level SR-Latch:**
    * Implemented an active-low SR-latch using only `NAND` primitives. This latch served as the basic building block for the subsequent designs.

2.  **Master-Slave D Flip-Flop:**
    * Constructed a positive-edge-triggered D flip-flop (based on the provided diagram) by interconnecting three of the previously designed SR-latch structures.

3.  **Low-Level Timing Analysis:**
    * A key part of the project was analyzing low-level timing. Realistic gate delays (e.g., NMOS 4ns, PMOS 6ns) were added to the Verilog model to estimate and test for **setup time ($t_{setup}$) and hold time ($t_{hold}$) violations**.

4.  **D Flip-Flop with Asynchronous Controls:**
    * Extended the D flip-flop design to include active-low asynchronous **Preset (PRE) and Clear (CLR)** inputs.

The entire design was implemented in Verilog and verified by simulating various edge cases, including simultaneous inputs (e.g., PRE and CLR) and critical timing violations.
