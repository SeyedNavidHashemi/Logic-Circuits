# Project 3: Fixed-Point Cosine Accelerator

This project is the RTL design of a hardware accelerator for calculating $cos(x)$ using the Taylor series expansion.

### Core Functionality

The accelerator computes $cos(x)$ based on the Taylor series:
$$cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots$$

### Key Architectural Features:

* **Fixed-Point Arithmetic:** The entire datapath operates on fixed-point numbers.
    * **Input `x`:** 16-bit fixed-point (8.8 format).
    * **Output $cos(x)$:** 16-bit fixed-point result.
* **Precision Control:**
    * A second input, `y` (8-bit fixed-point), defines the desired precision.
    * The Taylor series iteration stops when the absolute value of a new term being added (e.g., $|\frac{x^4}{4!}|$) is less than the precision threshold `y`.
* **Datapath & Controller:**
    * The design is a classic FSM+Datapath architecture.
    * A **Controller (FSM)**, based on the Hoffman model, manages the calculation loop (e.g., calculating $x^2$, fetching the factorial, dividing, and accumulating the result).
    * The **Datapath** performs all the arithmetic operations.
* **Coefficient ROM:**
    * A **ROM** (Look-Up Table) is used to store the pre-calculated coefficients ($\frac{1}{(2n)!}$).
    * This ROM was initialized using a `.hex` memory file.

### Design & Verification:

* **Language:** SystemVerilog
* **Tools:** The datapath and controller were designed and tested separately in **Quartus II**. They were then integrated, synthesized, and verified against a testbench to confirm the final accelerator's correctness.
