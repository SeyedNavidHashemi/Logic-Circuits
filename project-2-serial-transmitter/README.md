# Project 2: Serial Transmitter FSM

This project is a comprehensive exercise in sequential circuit design, focusing on the implementation of a Finite State Machine (FSM) to manage a serial data transmitter.

The complete circuit is designed as a modular system with three primary components that work together.

### Core Functionality

The transmitter's operation is controlled by a main sequencer FSM:

1.  **Search State:** The FSM continuously monitors the `serIn` line for a specific 7-bit start-sequence (`0111110`).
2.  **`nt` Collect State:** Upon detecting the sequence, the FSM transitions to a state where it reads the next 8 bits from `serIn`. These 8 bits define the number of data bits to be transmitted (`nt`).
3.  **Transmit State:** The FSM asserts `serOutValid` and transmits the next `nt` bits from `serIn` directly to `serOut`.
4.  **Loop:** After transmission is complete, the FSM returns to the **Search State**.

### Design & Methodology

* **Language:** SystemVerilog.
* **Components:** The system was built by first designing, simulating, and synthesizing three separate modules:
    * **Start-Sequence Detector (FSM)**
    * **`nt` Collector (Counter)**
    * **Data Transmitter (Counter-based)**
* **Tools:**
    * **ModelSim:** Used for pre-synthesis functional simulation.
    * **Intel Quartus:** Used for synthesis, post-synthesis simulation, and analysis of timing and resource utilization. Library components (LPMs) were used for counters.
* **Final System:** All three synthesized modules were imported and connected in a top-level Quartus project to build the final, complete serial transmitter circuit.
