# Cadence Digital Design Flow

This repository contains a small Cadence-based digital design flow for a 4-bit ALU (`alu4`). The project includes RTL, a SystemVerilog testbench, Genus synthesis output, Innovus physical design setup files, reports, and the final GDS layout.

## Design Overview

The ALU has two 4-bit inputs (`A` and `B`), a 2-bit operation select (`OP`), and a 4-bit output (`Y`).

| OP | Operation |
| --- | --- |
| `00` | `A + B` |
| `01` | `A - B` |
| `10` | `A & B` |
| `11` | `A | B` |

## Repository Structure

```text
.
+-- docs/
|   +-- images/
|       +-- final-innovus-layout.png
+-- gds/
|   +-- alu4_clean.gds
+-- physical_design/
|   +-- alu4.sdc
|   +-- alu4.view
+-- reports/
|   +-- area.rpt
|   +-- gates.rpt
|   +-- timing.rpt
+-- rtl/
|   +-- alu4.sv
+-- synthesis/
|   +-- alu4_netlist.v
+-- tb/
    +-- alu4_tb.sv
```

## Flow Artifacts

- `rtl/alu4.sv`: RTL implementation of the 4-bit ALU.
- `tb/alu4_tb.sv`: Simple testbench covering add, subtract, AND, and OR operations.
- `synthesis/alu4_netlist.v`: Synthesized gate-level netlist.
- `reports/area.rpt`: Genus area report. The synthesized design contains 25 cells with a total cell area of 304.700.
- `reports/gates.rpt`: Gate usage summary for the synthesized ALU.
- `reports/timing.rpt`: Genus timing report output.
- `physical_design/alu4.sdc`: Timing constraints used for the combinational ALU.
- `physical_design/alu4.view`: Innovus MMMC analysis view setup.
- `gds/alu4_clean.gds`: Final clean GDS output.

## Final Innovus Layout

The screenshot below shows the final Innovus physical layout view for `alu4`.

![Final Innovus layout](docs/images/final-innovus-layout.png)

## Notes

- The design targets the Sky130 standard-cell timing library shown in the generated synthesis reports.
- The physical design setup uses a virtual 10 ns clock with input and output delay constraints for the combinational ALU.
