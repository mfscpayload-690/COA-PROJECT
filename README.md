# 🖥️ RISC-V Assembly Lab Programs

> A collection of RISC-V assembly programs written as part of the **Computer Organization & Architecture (COA)** course lab sessions.  
> Each program is paired with its assembled binary (`.bin`) output.

---

## 📝 Programs Overview

### 🔢 Basic Arithmetic Operations

**File:** `27-02-2026/basic arithmetic operations.s`  
Loads two immediate values into registers and performs a **subtraction** operation.  
Demonstrates: `addi`, `sub`

---

### 🔀 Branching

**File:** `27-02-2026/branching.s`  
Compares two register values and **branches** to a label based on a less-than condition. Demonstrates conditional and unconditional control flow.  
Demonstrates: `addi`, `blt`, `jal`, `nop`

---

### 💾 Load Word from Base Address

**File:** `27-02-2026/Load Word from Base Address.s`  
Stores a value to a memory address and loads it back into a register. Demonstrates basic **memory read/write** using base-address + offset.  
Demonstrates: `addi`, `sw`, `lw`

---

### ➕ Sum of First N Natural Numbers

**File:** `27-02-2026/Sum of First N Natural Numbers.s`  
Iteratively computes the **sum of the first N natural numbers** using a loop with a decrement-and-branch pattern.  
Demonstrates: `addi`, `add`, `bne` (loop construct)

---

### 📦 Array Handling

**File:** `27-02-2026/Array Handling.s`  
Iterates over a 5-element integer array stored at a base memory address and computes the **sum of all elements**.  
Demonstrates: `addi`, `lw`, `add`, `blt` (array traversal with pointer arithmetic)

---

## 🛠️ Tools Used

| Tool  | Purpose |
|-------|---------|
| [Ripes](https://github.com/mortbopet/Ripes) | Primary tool — visual RISC-V assembler, simulator, and pipeline visualizer used to write, assemble, and run all programs |
| [Git](https://git-scm.com/) | Version control — tracking changes across lab sessions |

---

## 🚀 Getting Started with Ripes

1. Download and install **[Ripes](https://github.com/mortbopet/Ripes/releases)**
2. Open Ripes and go to the **Editor** tab
3. Load or paste any `.s` file from this repo
4. Click **Assemble** to compile
5. Use the **Processor** tab to step through execution and inspect registers & memory

---

## 📅 Lab Session Log

| Date         | Topics Covered                                                              |
|--------------|-----------------------------------------------------------------------------|
| 20-02-2026   | *(files pending)*                                                           |
| 27-02-2026   | Arithmetic ops, Branching, Memory load/store, Loops, Array traversal        |
| 06-03-2026   | *(files pending)*                                                           |

---

## 📄 License

This repository is for **academic/educational purposes** only as part of a university COA lab coursework.
