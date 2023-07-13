
### PART 1 ###
#load data
PitcherData<- read.csv("PitcherData.csv")
PitcherData2 <- read.csv("PitcherData2.csv")

#tidyverse
library(tidyverse)

#ggplot
library(ggplot2)

###objective:Is there a statistically significant difference in mean Elbow Varus Torque 
#at Max Shoulder External Rotation (Elb_Var_Torque_MER) between Pitchers 
#(id_pitcher) 800021 and 800098? (α < 0.05)

#NULL hypothesis: there is NO difference in mean Elbow Varus Torque @ Max Shoulder External Rot
#between pitcher21 and pitcher98
#ALT hypothesis: this IS a difference in mean Elbow Varus Torque @ Max Shoulder External Rot
#between pitcher21 and pitcher98

#Is a t-test appropriate? Check normality of the distribution
#using Shapiro-Wilk normality test, we can see if the data within
#the subjects is normally distributed

### NORMALITY TEST ###
shapiro.test(PitcherData2$Pitcher21)
shapiro.test(PitcherData2$Pitcher98)

#p-value for Pitcher21 = 0.115
#p-value for Pitcher98 = 0.7193
#Reject null, t-test is appropriate.

#Data is normal, is there equal amount of variance? (Student's/Welch's)

### VARIANCE TEST ###
var.test(PitcherData2$Pitcher21, PitcherData2$Pitcher98)

#p-value = 0.0005546 (<0.05)... variances are NOT EQUAL
#We can now perform a modified T-test
#two sided... uncertain of the direction of the effect
#paired = false because observations are not linked
#var.equal = false because we found that the variance is not equal

### WELCH"S T-TEST ###
t.test(PitcherData2$Pitcher21, PitcherData2$Pitcher98, 
       alternative = "two.sided", 
       paired = FALSE, 
       var.equal = FALSE)

#with a p-value of 2.2e-16, we can reject the null hypothesis and say that there
# is strong evidence to suggest that there is
# significant difference in mean Elbow Varus Torque @ Max Shoulder External Rot
# between pitcher21 and pitcher98


### BOX PLOT ###
library(tidyverse)

qplot(x = PitcherData$id_Pitcher, 
      y=PitcherData$Elb_Var_Torque_MER, 
      geom = "boxplot", 
      ylab = "Elb_Var_Torque_MER", 
      xlab = "")


### PART 2 ###
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
  Trunk_Lean = DataSetNumeric$Trunk_Lean_MER)

### Upper Body Metrics - ALL AT MER#

UpperBodyMetrics <- data.frame(
  Sho_AbdAd = DataSetNumeric$Sho_AbAd_MER,
  Elb_Flex = DataSetNumeric$Elb_Flex_MER,
  Shoudler_IrEr = DataSetNumeric$Sho_Rot_MER,
  Elb_ProSup = DataSetNumeric$Elb_ProSup_MER)

# Calculate correlations between LowerBodyMetrics and VeloTorque
correlations_lower <- cor(LowerBodyMetrics, VeloTorque)

# Convert correlations to a tidy dataframe
correlations_lower_df <- correlations_lower %>%
  as.data.frame() %>%
  rownames_to_column(var = "LowerMetric") %>%
  gather(key = "VeloTorqueMetric", value = "Correlation", -LowerMetric) %>%
  filter(LowerMetric != "VarusTorque" & LowerMetric != "PitchVelo")

# Create color for bars
my_col <- viridisLite::mako(3)[2]

# Create chart for correlations between LowerBodyMetrics and VeloTorque
correlations_lower_df %>% 
  ggplot(aes(x = Correlation, y = paste(LowerMetric, VeloTorqueMetric, sep = " + "))) + 
  geom_col(fill = my_col) +
  labs(x = 'Correlation', y = NULL) +
  ggtitle("Trunk & Lower Body Correlations @ MER") +
  scale_x_continuous(limits = c(-.5, .5))

# Calculate correlations between UpperBodyMetrics and VeloTorque
correlations_upper <- cor(UpperBodyMetrics, VeloTorque)

# Convert correlations to a tidy dataframe
correlations_upper_df <- correlations_upper %>%
  as.data.frame() %>%
  rownames_to_column(var = "UpperMetric") %>%
  gather(key = "VeloTorqueMetric", value = "Correlation", -UpperMetric) %>%
  filter(UpperMetric != "VarusTorque" & UpperMetric != "PitchVelo")

# Create chart for correlations between UpperBodyMetrics and VeloTorque
correlations_upper_df %>% 
  ggplot(aes(x = Correlation, y = paste(UpperMetric, VeloTorqueMetric, sep = " + "))) + 
  geom_col(fill = my_col) +
  labs(x = 'Correlation', y = NULL) +
  ggtitle("Upper Body Correlations @ MER") +
  scale_x_continuous(limits = c(-.5, .5))


### PART 3 ###
library(tidyverse)

library(readr)
X98vGroup_Lean <- read_csv("98vGroup_Lean.csv")
View(X98vGroup_Lean)
X98vGroup_Ank <- read_csv("98vGroup_Ank.csv")
View(X98vGroup_Ank)


### Compare Pitcher98 Trunk/Ank to Group ###

### Is data normal? ###

#label
Pitcher98Lean <- X98vGroup_Lean$Pitcher98
GroupLean <- X98vGroup_Lean$Group
Pitcher98Ank <- X98vGroup_Ank$Pitcher98
GroupAnk <- X98vGroup_Ank$Group

### NORMALITY TEST ###
shapiro.test(Pitcher98Lean)
#p-value = 0.1545 (NORMAL)
shapiro.test(GroupLean)
#p-value = 1.041e-07 (NOT NORMAL)
shapiro.test(Pitcher98Ank)
#p-value = 0.0001056 (NOT NORMAL)
shapiro.test(GroupAnk)
#p-value = 2.623e-13 (NOT NORMAL)

### Data is NOT normal... Wilcoxon rank-sum test ###

### RANK SUM SIGNIFICANT DIFFERENCE (WILCOX) ###
wilcox.test(Pitcher98Lean, GroupLean)
#p-value < 0.001 (2.2e-16)
wilcox.test(Pitcher98Ank, GroupAnk)
#p-value = 0.0001688

### PITCHER98 has statistically significant difference in trunk lean
# and lead ankle eversion/inversion @ max external rotation 
# compared to his team ... further investigation needed ###


### Pitcher98 v Group TRUNK Box Plot ###
boxplot(X98vGroup_Lean, main = "Trunk Lean Comparsion", 
        xlab = "", ylab = "Trunk Lean Deg @ MER")

### Pitcher98 v Group ANK Box Plot ###
boxplot(X98vGroup_Ank, main = "Lead Ankle Comparison", 
        xlab = "", ylab = "Lead Ankle Ev/Inv Deg @ MER")
