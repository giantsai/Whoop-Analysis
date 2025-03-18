# Check if 'corrplot' is installed; if not, install it
if (!require("corrplot")) {
  install.packages("corrplot", dependencies = TRUE)
  library(corrplot)
}

# Load necessary libraries
library(ggplot2)

# Create Data Frame for WHOOP and InBody data
whoop_data <- data.frame(
  Month = c("Oct 2024", "Nov 2024", "Dec 2024", "Jan 2025", "Feb 2025", "Mar 2025"),
  Resting_Heart_Rate = c(68, 64, 60, 56, 52, 48),
  Respiratory_Rate = c(18.6, 17.7, 16.8, 15.9, 15.0, 14.1),
  Sleep_Duration = c(7.0, 7.1, 7.3, 7.4, 7.5, 7.5),
  Aerobic_Activity = c(10, 15, 20, 25, 30, 35),
  Weight = c(266.1, 260.0, 255.7, 252.0, 250.7, 244.5),  # Interpolated weight data
  Body_Fat_Percentage = c(38.7, 38.3, 38.0, 37.0, 36.5, 37.2),  # Adjusted percentages
  Skeletal_Muscle_Mass = c(93.3, 91.5, 90.4, 90.0, 89.0, 87.3)   # Interpolated muscle mass
)

# Compute Correlation Matrix (excluding Month column)
correlation_matrix <- cor(whoop_data[,-1])

# Print the Correlation Matrix
print(correlation_matrix)

# Visualize the Correlation Matrix using corrplot
corrplot(correlation_matrix, method = "ellipse", type = "lower", 
         tl.col = "black", tl.srt = 45)

# Save the plot to a file (optional)
ggsave("correlation_matrix_plot.png", width = 8, height = 6)
