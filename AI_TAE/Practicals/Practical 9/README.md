# Practical 9: Bayes Theorem for Rain Prediction

## Aim
Evaluate Bayes Rules for Rain prediction from given scenario.

## Theory
Bayes' Theorem describes the probability of an event based on prior knowledge of conditions related to the event. Formula:

\[ P(A|B) = \frac{P(B|A) \times P(A)}{P(B)} \]

### Key Terms
- **Hypotheses**: Possible events/outcomes (E1, E2, ...).
- **Priori Probability P(Ei)**: Initial probability before new data.
- **Posterior Probability P(Ei|A)**: Updated probability after new data.
- **Conditional Probability P(A|B)**: Probability of A given B has occurred.
- **Joint Probability P(A ∩ B)**: Probability of both A and B occurring.

### Example: Rain Prediction
- P(cloudy) = 0.40
- P(rain) = 0.20
- P(cloudy|rain) = 0.85

\[ P(rain|cloudy) = \frac{0.20 \times 0.85}{0.40} = 0.425 \ (42.5\%) \]

## Dataset
- **weather.arff**: Weka ARFF format dataset for weather attributes predicting rain (e.g., outlook, temperature, humidity, windy).

## Implementation
1. Load `weather.arff` in Weka Explorer.
2. Use **Bayes Net** or **Naive Bayes** classifier.
3. Select 'play' or 'rain' as class attribute.
4. Train model and evaluate accuracy/confusion matrix.
5. Visualize rules for rain prediction.

## Expected Results
- Model accuracy typically ~70-90% on weather dataset.
- Key rules: High humidity + outlook=sunny/overcast → rain likely.
- Refer to `Screenshot 2026-04-02 215419.png` for classifier output.

## Setup & Run
1. Install [Weka](https://waikato.github.io/weka-wiki/downloading/).
2. Open Weka → Explorer.
3. Open file → `weather.arff`.
4. Classify tab → Choose Bayes classifier → Start.

## References
- aim.txt, theory.md
- Weka Documentation: Bayes Classifiers

---
**Practical 9 completed using Bayes Theorem for probabilistic rain prediction.**
