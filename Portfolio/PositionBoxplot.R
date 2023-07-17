# Install required packages
install.packages(c("tidyverse", "ggplot2", "dplyr", "data.table", "readr", "lubridate"))

# Load installed packages
library(tidyverse)
library(ggplot2)
library(dplyr)
library(data.table)
library(readr)
library(lubridate)

CMJ <- CMJ_raw_Modified

# Split the data by position group into separate objects
position_groups <- split(CMJ, CMJ$Position)

# Assign each position group to a separate object
TE_data <- position_groups$TE
WR_data <- position_groups$WR
OL_data <- position_groups$OL
DL_data <- position_groups$DL
LB_data <- position_groups$LB
RB_data <- position_groups$RB
DB_data <- position_groups$DB
QB_data <- position_groups$QB

CMJ_filtered <- CMJ[complete.cases(CMJ$Position) & complete.cases(CMJ$`RSI-modified [m/s]`), ]

# Define unique colors for each position group
position_colors <- c(TE = "red", WR = "blue", OL = "green", DL = "orange", LB = "purple",
                     RB = "pink", DB = "yellow", QB = "cyan", Spec = "grey")


### mRSI Boxplot by Position ###
ggplot(CMJ_filtered, aes(x = Position, y = `RSI-modified [m/s]`, fill = Position)) +
  geom_boxplot() +
  scale_fill_manual(values = position_colors) +
  stat_summary(fun = median, geom = "text", vjust = -1, color = "black", size = 3,
               aes(label = round(..y.., 2))) +
  labs(x = "Position", y = "RSI-modified [m/s]") +
  ggtitle("mRSI by Position") +
  theme(plot.title = element_text(hjust = 0.5))

### Relative Concentric Peak Force Boxplot by Position ###
ggplot(CMJ_filtered, aes(x = Position, y = `Concentric Peak Force / BM [N/kg]`, fill = Position)) +
  geom_boxplot() +
  scale_fill_manual(values = position_colors) +
  stat_summary(fun = median, geom = "text", vjust = -0.5, color = "black", size = 3,
               aes(label = round(..y.., 2))) +
  labs(x = "Position", y = "Concentric Peak Force [N/kg]") +
  ggtitle("Relative Peak Force by Position") +
  theme(plot.title = element_text(hjust = 0.5))
