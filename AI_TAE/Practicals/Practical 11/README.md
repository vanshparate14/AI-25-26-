# Practical 11: Linear Regression Implementation

## Overview
This project implements **Linear Regression** to predict continuous values (marks) based on a given dataset of study hours. It uses scikit-learn for model training, pandas for data handling, and matplotlib for visualization. The script is interactive, allowing users to input custom datasets and predict marks for new study hours.

**Aim**: Implement Linear Regression to predict continuous values using a given dataset.

## Features
- Interactive input for multiple data points (study hours and marks).
- Automatic DataFrame creation using pandas.
- Training of LinearRegression model.
- Prediction for new study hours.
- Display of model parameters (slope and intercept).
- Visualization: Scatter plot of actual data with regression line.

## Requirements
- Python 3.x
- numpy
- pandas
- matplotlib
- scikit-learn

Install dependencies:
```
pip install numpy pandas matplotlib scikit-learn
```

## How to Run
1. Save the code as `code.py`.
2. Open terminal in the project directory.
3. Run:
   ```
   python code.py
   ```
4. Follow the prompts:
   - Enter number of data points.
   - Input study hours and marks for each student.
   - Enter new study hours for prediction.
5. View console output and the generated plot.

## Sample Usage & Output
```
Enter number of data points: 3
Enter study hours for student 1: 1
Enter marks for student 1: 50
Enter study hours for student 2: 5
Enter marks for student 2: 80
Enter study hours for student 3: 10
Enter marks for student 3: 95
Enter study hours to predict marks: 7

Slope (m): 4.5
Intercept (b): 45.0
Predicted Marks for 7.0 hours: 87.5
```
- A matplotlib window opens showing scatter points for actual data and a straight regression line.

## Files
- `aim.txt`: Project aim.
- `code.py`: Main implementation.
- `README.md`: This file.

## Project Structure
```
Practical 11/
├── README.md
├── aim.txt
└── code.py
```

