# AI_TAE - AI Lab Practicals and Prolog Project

## 📋 Overview
This repository contains lab practicals for **AI_TAE** (likely *Artificial Intelligence: Tools and Techniques in AI Engineering* or similar course). It includes:

- **12 Python-based lab practicals** (Practicals/1-12) demonstrating AI algorithms, matrix manipulation, and problem-solving.
  - Each practical has:
    - `aim.txt`: Lab objective.
    - `theory.md`: Detailed theory, algorithm, and applications.
    - `code.py`: Executable Python code.
    - Screenshots of outputs/results.
- **Root Prolog files** for logic-based reasoning:
- Following are the examples
  - `legal_reasoning.pl`: Models crimes (theft, assault, fraud, traffic violations) with facts, rules, and punishments.
  - `parents.pl`: Family relationship queries (parent, sibling, grandparent, etc.).

## 📂 Structure
```
AI_TAE/
├── legal_reasoning.pl       # Prolog: Legal crime reasoning
├── parents.pl              # Prolog: Family tree relationships
└── Practicals/
    ├── Practical 1/        # Magic Square generator (Siamese method)
    │   ├── aim.txt
    │   ├── theory.md
    │   ├── code.py
    │   └── Screenshot*.png
    ├── Practical 2/
    ├── Practical 3/
    ├── Practical 4/
    ├── Practical 5/
    └── Practical 6/
    └── Practical 7/
    └── Practical 8/
    └── Practical 9/
    └── Practical 10/
```

## 🚀 Quick Start

### Run Python Practicals
1. Navigate to a practical: `cd Practicals/Practical 1`
2. Run: `python code.py`
   - Example (Practical 1): Enter an odd number (e.g., 3) to generate and print a magic square.

### Run Prolog Files
1. Ensure [SWI-Prolog](https://www.swi-prolog.org/) is installed.
2. Load and query:
   ```
   swipl legal_reasoning.pl
   ?- legal_decision(X, Crime, Punishment).
   ```
   Or for parents.pl:
   ```
   swipl parents.pl
   ?- father(X, lakshit).
   ```

## 🔍 Examples

### Practical 1: Magic Square
- **Input**: Odd `n` (e.g., 3)
- **Output**: 3x3 grid where rows/columns/diagonals sum to 15.
```
 8 1 6 
 3 5 7 
 4 9 2 
```

### Prolog: Legal Reasoning
```
?- crime(X, theft).
X = amit ;
X = sneha.
?- legal_decision(amit, theft, "3 years jail").
true.
```

### Prolog: Family Example
```
?- father(chandu, lakshit).
true.
?- sibling(lakshit, lavanya).
true.
```

## 📚 Course Context
These materials cover foundational AI concepts:
- Algorithm design (e.g., Siamese method for magic squares).
- Logic programming with Prolog (expert systems, knowledge representation).
- Tools: Google Colab, VS Code, Python, Prolog.

## 📝 Contributing / Next Steps
- Add missing practical codes/theory if incomplete.
- Run all practicals and verify screenshots.
- Extend Prolog rules for more complex queries.

**Happy Learning! 🚀**
