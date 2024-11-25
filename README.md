# Design Analysis: Electrical Power System

This repository contains the MATLAB implementation and supporting documentation for analyzing and calculating parameters within a given electrical power system. The project focuses on short-circuit calculations and impedance modeling as part of a construction design assignment.

## Project Overview

The primary objective is to analyze an electrical power network, specifically to:

1. **Calculate current and voltage conditions at the short-circuit location.**
2. **Determine the contribution of individual sources to the short-circuit current.**

The network comprises various components, including generators, transformers (two- and three-winding), transmission lines, and active networks. The analysis is based on specific input data provided in the accompanying documentation.

## Repository Contents

- **`konstrukcijski_izracun.m`**: The MATLAB script for performing short-circuit calculations and impedance transformations.
- **Documentation**: PDF outlining the task, input data, and methodology for calculations.

## Features

1. **Short-Circuit Analysis**: Calculates currents and voltages under fault conditions.
2. **Impedance Transformation**: Converts parameters to a unified reference voltage level.
3. **Source Contributions**: Determines the share of each generator, transformer, and motor in the fault current.

## Input Data

The system parameters, as described in the documentation, include:

- **Generators**: Characteristics such as power ratings, reactances, and grounding conditions.
- **Transformers**: Data for two- and three-winding transformers, including connection groups and short-circuit impedances.
- **Transmission Lines**: Impedance values based on line length and voltage level.
- **Motors**: Contributions to the fault current depending on their ratings and operating conditions.

## Usage

### Prerequisites

- MATLAB R2021a (or later)

### Running the Script

1. Clone the repository:
2. Adjust the input parameters as necessary within the script to match your system configuration.
3. Run the script to obtain:

  - Voltage and current conditions at the fault location.
  - Individual source contributions to the short-circuit current.
  
### Output

The script provides detailed output for:

  - Short-circuit currents and voltages.
  - Contributions from each generator, motor, and transformer.
  - Equivalent network impedance.
