# Load required libraries
library(readr)
library(tidyverse)
library(viridisLite)

# Read the dataset from CSV file
DataSetNumeric <- read_csv("DataSetNumeric.csv")
View(DataSetNumeric)

### Label Ball Velocity, Varus Torque @ MER ###

VeloTorque <- data.frame(
  PitchVelo = DataSetNumeric$Pitch_Velocity,
  VarusTorque = DataSetNumeric$Elb_Var_Torque_MER)

### Lower Body Metrics - ALL AT MER#
LowerBodyMetrics <- data.frame(
  Lead_Ankle_EvInv = DataSetNumeric$Lead_Ankle_EvInv_MER,
  Lead_Knee_Flex = DataSetNumeric$Lead_Knee_Flex_Vel_MER,
  Pelvis_Rot = DataSetNumeric$Pelvis_Rotation_MER,
  Trunk_Lean = DataSetNumeric$Trunk_Lean_MER,
  VeloTorque)

### Upper Body Metrics - ALL AT MER#

UpperBodyMetrics <- data.frame(
  Sho_AbdAd = DataSetNumeric$Sho_AbAd_MER,
  Elb_Flex = DataSetNumeric$Elb_Flex_MER,
  Shoudler_IrEr = DataSetNumeric$Sho_Rot_MER,
  Elb_ProSup = DataSetNumeric$Elb_ProSup_MER,
  VeloTorque)

### Correlation Between Upper/Lower Metrics w/ Velocity & Torque)

cor_upper <- cor(UpperBodyMetrics, VeloTorque)
cor_lower <- cor(LowerBodyMetrics, VeloTorque)

# Create sub-matrix with lower triangle correlations
triangle_correlations_upper <- cor_upper * lower.tri(cor_upper)
triangle_correlations_lower <- cor_lower * lower.tri(cor_lower)

# Transform the matrices to tibbles
correlations_upper <- triangle_correlations_upper %>%
  as_tibble(rownames = 'variable1') %>%
  pivot_longer(cols = -1, names_to = 'variable2', values_to = 'correlation') %>%
  filter(abs(correlation) > 0 & abs(correlation) < 1) %>%
  mutate(
    pair = paste(variable1, variable2, sep = ' + '),
    pair = fct_reorder(pair, correlation)
  )

correlations_lower <- triangle_correlations_lower %>%
  as_tibble(rownames = 'variable1') %>%
  pivot_longer(cols = -1, names_to = 'variable2', values_to = 'correlation') %>%
  filter(abs(correlation) > 0 & abs(correlation) < 1) %>%
  mutate(
    pair = paste(variable1, variable2, sep = ' + '),
    pair = fct_reorder(pair, correlation)
  )

# Create color for bars
my_col <- viridisLite::mako(3)[2]

# Create chart for correlations between UpperBodyMetrics and VeloTorque
correlations_upper %>% 
  ggplot(aes(x = correlation, y = pair)) + 
  geom_col(fill = my_col) +
  labs(x = 'Correlation', y = NULL) +
  ggtitle("Upper Extremity Correlations") +
  scale_x_continuous(limits = c(-0.5, 0.5))

# Create chart for correlations between LowerBodyMetrics and VeloTorque
correlations_lower %>% 
  ggplot(aes(x = correlation, y = pair)) + 
  geom_col(fill = my_col) +
  labs(x = 'Correlation', y = NULL) +
  ggtitle("Trunk and Lower Extremity Correlations") +
  scale_x_continuous(limits = c(-0.5, 0.5))
