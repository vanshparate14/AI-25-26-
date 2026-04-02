# Practical 8: Semantic Networks on Imputed Predicate Logic

## Aim
Demonstrate the concept of Semantic network on imputed predicate logic to represent the knowledge.

## Overview
This practical implements a simple semantic network using Python dictionaries to represent relationships like:
- **ISA** (inheritance): e.g., Sparrow ISA Bird, Bird ISA Animal.
- **HAS** (properties): e.g., Animal HAS Cells.
- **CAN** (abilities): e.g., Bird CAN Fly, Dog CAN Bark.

The code supports inheritance: properties and abilities are checked up the ISA hierarchy.

## Files
- **aim.txt**: Describes the objective of the practical.
- **code.py**: Main Python implementation with relationship dictionaries and query functions (`check_isa`, `check_has`, `check_can`).
- **code.txt**: (Empty file)

## Running the Code
1. Open `code.py` in a Python environment (Python 3+).
2. Run the script:

```
python code.py
```

### Expected Output
```
Sparrow ISA Bird: True
Dog ISA Animal: True
Sparrow HAS Cells: True
Bird CAN Fly: True
Dog CAN Bark: True
```

## How It Works
- **Dictionaries**:
  - `isa`: Maps subclasses to superclasses.
  - `has`: Maps classes to properties.
  - `can`: Maps classes to abilities.
- **Functions** traverse the ISA chain to inherit properties/abilities.

## Extending the Network
Add more entries to `isa`, `has`, or `can` dictionaries, e.g.:
```python
isa[\"Robin\"] = \"Bird\"
can[\"Sparrow\"] = \"Sing\"
```

This structure models knowledge representation using semantic networks.
