# Install required packages
install.packages(c("tidyverse", "ggplot2", "dplyr", "data.table", "readr", "lubridate"))

# Load installed packages
library(tidyverse)
library(ggplot2)
library(dplyr)
library(data.table)
library(readr)
library(lubridate)

library(readr)
SL_Jump_Mod <- read_csv("SL_Jump_Mod.csv")
View(SL_Jump_Mod)

## Historic SL Jump data ##
hist_data <- hist(SL_Jump_Mod$`Peak_Landing_Force_Asym_%`, plot = FALSE)

# Define colors for specific bars
colors <- rep("skyblue", length(hist_data$counts))
colors[which(hist_data$breaks[-1] %in% c(15, 20))] <- "orange"
  colors[which(hist_data$breaks[-1] %in% c(25, 30, 35))] <- "red"
    
  barplot(hist_data$counts,
          xlab = "Peak Landing Force Asymmetry (%)",
          ylab = "Frequency",
          main = "Single Leg Landing Asymmetry",
          names.arg = hist_data$breaks[-1],
          col = colors,
          border = "black",
          ylim = c(0, 90))
  
  # Calculate the midpoints of each bar
  bar_midpoints <- barplot(hist_data$counts, plot = FALSE)
  
  # Add count values above each bar
  text(bar_midpoints, hist_data$counts, labels = hist_data$counts, pos = 3, col = "black", offset = 0.5)
  
  # Add legend/key
  legend("topright", legend = c("Normal", "Moderate", "Caution"),
         fill = c("skyblue", "orange", "red"), border = "black")
  
  # Subset the data based on the condition
  Asymm_List <- SL_Jump_Mod[SL_Jump_Mod$`Peak_Landing_Force_Asym_%` > 15, c("Name", "Peak_Landing_Force_Asym_%")]
  
  library(knitr)
  
  # Print the subsetted data
  kable(Asymm_List)
