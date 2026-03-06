# PERFORMANCE ANALYSIS REPORT
## Array Maximum & Minimum using RISC-V (Ripes Simulator)

---

## Subject
**Computer Organization & Architecture**

## Course Code
**PBCST404**

## Group Number
**Group 5**

## Group Members
- Ahammed Halim (Roll No: 6)
- Anakha Shaju (Roll No: 60)
- Aravind Lal (Roll No: 13)
- Madhav S (Roll No: 32)

---

# 1. Experiment Title

Performance Analysis of **Array Maximum and Minimum Algorithm** implemented in **RISC-V Assembly Language** using the **Ripes Simulator**.

---

# 2. Objective

To evaluate and compare the performance of the **Array Maximum and Minimum RISC-V Assembly program** on two processor architectures:

- **Single Cycle RISC-V Processor**
- **5-Stage Pipelined RISC-V Processor**

The comparison is performed using execution statistics such as:

- Clock Cycles
- Instructions Retired
- CPI (Cycles Per Instruction)
- IPC (Instructions Per Cycle)

---

# 3. Tools Used

- **Ripes Simulator**
- **RISC-V Assembly Language**
- **RV32IM ISA**

---

# 4. Program Description

The program scans an integer array and determines:

- **Maximum value in the array**
- **Minimum value in the array**

### Input Array

```
29, 10, 14, 37, 13
```

### Algorithm

1. Load the base address of the array.
2. Load the number of elements in the array.
3. Initialize both **max** and **min** with the first element of the array.
4. Iterate through the array starting from index 1.
5. Compare each element with the current maximum value.
6. If the element is greater, update the maximum.
7. Compare the element with the current minimum value.
8. If the element is smaller, update the minimum.
9. Continue until the end of the array is reached.

---

# 5. Experimental Setup

The same RISC-V assembly program was executed on two different processor configurations in the Ripes simulator.

### Processor Configurations

| Processor | Architecture | ISA |
|-----------|-------------|-----|
| Single Cycle Processor | Non-pipelined | RV32IM |
| 5-Stage Processor | Pipelined | RV32IM |

---

# 6. Execution Results

## 6.1 Single Cycle RISC-V Processor

Execution statistics obtained from the simulator:

| Metric | Value |
|------|------|
| Cycles | **47** |
| Instructions Retired | **47** |
| CPI | **1.00** |
| IPC | **1.00** |

### Observations

- Each instruction executes in exactly **one clock cycle**.
- Therefore **Total Cycles = Instructions Executed**.
- CPI remains **1**, which is expected for a single-cycle architecture.

### Register Observation

From the register view after execution:

```
t2 = 37 (Maximum value)
t3 = 10 (Minimum value)
```

This confirms that the program correctly determined the maximum and minimum elements of the array.

---

## 6.2 5-Stage RISC-V Processor

Execution statistics obtained from the simulator:

| Metric | Value |
|------|------|
| Cycles | **77** |
| Instructions Retired | **47** |
| CPI | **1.64** |
| IPC | **0.61** |

### Observations

- The number of instructions executed remains **47**.
- However the pipelined processor required **77 cycles**.
- The CPI increased due to pipeline stalls and hazards.

---

# 7. Performance Comparison

| Processor Type | Cycles | Instructions | CPI | IPC |
|----------------|-------|-------------|-----|-----|
| Single Cycle | 47 | 47 | 1.00 | 1.00 |
| 5-Stage Pipeline | 77 | 47 | 1.64 | 0.61 |

---

# 8. Analysis

### Single Cycle Processor

- Executes one instruction per clock cycle.
- No pipeline hazards occur.
- Execution is straightforward but each instruction takes a longer clock period in real hardware implementations.

### 5-Stage Pipelined Processor

The pipelined processor divides instruction execution into five stages:

1. IF – Instruction Fetch
2. ID – Instruction Decode
3. EX – Execute
4. MEM – Memory Access
5. WB – Write Back

Although pipelining improves throughput, the program experiences the following hazards:

- **Data hazards** due to dependencies between instructions
- **Branch hazards** caused by loop control instructions
- **Pipeline stalls** due to these hazards

These issues increase the total number of cycles required to complete execution.

### CPI Calculation

```
CPI = Total Cycles / Instructions Executed
CPI = 77 / 47 ≈ 1.64
```

---

# 9. Conclusion

This experiment demonstrates the performance differences between a **single-cycle processor** and a **pipelined processor**.

- The **Single Cycle Processor** executed the program in **47 cycles** with CPI = 1.
- The **5-Stage Pipelined Processor** required **77 cycles** due to pipeline hazards and stalls.

Although pipelining generally improves throughput in complex workloads, smaller programs with frequent dependencies and branches may suffer from pipeline overhead.

The experiment successfully illustrates how processor architecture influences program execution performance.

---

# 10. Screenshots Captured

The following screenshots were collected during the experiment:

1. RISC-V Assembly Code in Ripes Editor
2. Single Cycle Processor Architecture
3. Single Cycle Execution Statistics
4. 5-Stage Processor Architecture
5. 5-Stage Execution Statistics

These screenshots verify both the correctness of execution and the recorded performance metrics.

---

# 11. Result

The **Array Maximum & Minimum RISC-V assembly program** was successfully executed in the **Ripes simulator**, and the performance differences between **single-cycle and pipelined processors** were analyzed.

---

