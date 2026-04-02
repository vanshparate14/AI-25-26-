# Practical 10: Prompt Engineering and Adversarial Search Concepts

## Overview
This practical demonstrates **Prompt Engineering** techniques for effectively interacting with AI models like ChatGPT to learn complex AI concepts, specifically **Adversarial Search**. It includes theoretical foundations, practical aim, and a demo implementation of the **Connect Four** game, which exemplifies adversarial search principles (game tree exploration, minimax-like decision making in 2-player zero-sum games).

## Files
- **`theory.md`**: Comprehensive theory on prompt engineering.
  - Characteristics of good prompts (clarity, specificity, context, constraints).
  - Patterns: Role-based, Step-by-Step (Chain-of-Thought), Few-shot.
  - Task-oriented prompting, iterative refinement, evaluation, ethics.
  - Applications in academics and tasks like generating notes/quizzes/code.
- **`aim.txt`**: Practical objective.
  ```
  Aim: Apply prompt engineering to construct a prompt for learning the concept of Adversarial Search.
  ```
- **`code.py`**: Connect Four game implementation in Python (using NumPy).
  - 6x7 board, gravity-based piece drops.
  - Win detection: horizontal, vertical, diagonal 4-in-a-row.
  - 2-player turn-based gameplay.

## How to Run
1. Ensure Python and NumPy are installed (`pip install numpy` if needed).
2. Run the game:
   ```
   python code.py
   ```
3. Players alternate selecting columns (0-6). First to connect 4 wins!

Example board output:
```
[[0. 0. 0. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 0.]
 ... (flipped for display)
```

## Tasks & Activities
As per theory and aim:
1. **Craft & Refine Prompts**: Convert weak prompts to strong ones for explaining Adversarial Search (e.g., minimax algorithm).
   - Example good prompt: "You are an AI professor. Explain Adversarial Search and minimax algorithm step-by-step with Connect Four example, in 5 bullet points for beginners."
2. **Generate Content**:
   - Notes on Adversarial Search.
   - Quiz MCQs.
   - Code snippets (e.g., add minimax AI to code.py).
3. **Evaluate AI Outputs**: Check for accuracy, completeness, bias.
4. **Ethical Use**: Verify facts, avoid plagiarism.

## Learning Outcomes
- Master prompt engineering for AI-assisted learning.
- Understand Adversarial Search via game example.
- Apply iterative refinement for better AI interactions.

*Note: Enhance `code.py` with AI player using minimax for full adversarial search demo.*
