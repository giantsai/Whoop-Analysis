# WHOOP Fitness Journey Analysis

This repository documents my fitness transformation using WHOOP, 
a biometric tracking wearable. The analysis focuses on the impact of continuous 
biometric feedback on motivation, cardiovascular health, aerobic activity, 
and body composition.

## Overview

WHOOP provides real-time physiological data, including:
- **Resting Heart Rate (RHR)**
- **Respiratory Rate (RR)**
- **Sleep Metrics**
- **Aerobic Activity**

This project explores how these metrics correlate with physical improvements, 
as validated by **InBody composition scans**.

## Key Findings

- **Resting Heart Rate (RHR)** decreased from **68 BPM** to **48 BPM**, 
  indicating significant cardiovascular improvement.
- **Aerobic Activity** increased from **10 to 35 minutes daily**, 
  reflecting enhanced stamina.
- **Weight Loss**: Dropped from **266.1 lbs to 244.5 lbs**, 
  accompanied by a decrease in **body fat percentage (38.7% to 37.2%)**.

## Correlation Matrix

The correlation matrix below visualizes the relationships between key biometric variables. 
This result was generated using the R script (`whoop_analysis.R`) and serves as an output of the analysis:

[Screenshot 2025-03-18 at 10 42 44 AM](https://github.com/user-attachments/assets/374f53bb-dcb9-4324-b8ea-e5b3dcc125b3)


### Interpretation:

- **Negative Correlations (Blue Ovals)**:
  - **Aerobic Activity vs. Resting Heart Rate**: Strong negative correlation, indicating that as exercise increased, RHR significantly improved.
  - **Weight vs. Resting Heart Rate**: A clear negative relationship suggests weight loss contributes to improved cardiovascular health.
  - **Body Fat Percentage vs. Aerobic Activity**: Increased aerobic activity is strongly linked to lower body fat percentage.

- **Positive Correlations (Red Ovals)**:
  - **Resting Heart Rate vs. Respiratory Rate**: Both metrics decline together, reflecting improved cardiovascular efficiency.
  - **Weight vs. Body Fat Percentage**: Expected relationship where body fat percentage increases with weight.
  - **Skeletal Muscle Mass vs. Weight**: Higher muscle mass correlates with overall body weight.

This correlation analysis helps validate how WHOOP data aligns with real physiological improvements.

## Repository Contents

- `whoop_analysis.R` - R script for analyzing and visualizing the data.
- `whoop_report.pdf` - A detailed report summarizing the findings.
- `README.md` - Overview of the project.

## Instructions to Run the Analysis

1. Install R and the required packages (`ggplot2`, `corrplot`).
2. Run the `whoop_analysis.R` script to generate correlation insights and visualizations.

## Conclusion

This project showcases how **data-driven fitness tracking** can significantly 
improve motivation, adherence, and overall health outcomes.
