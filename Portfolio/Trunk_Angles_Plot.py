import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter

# Load the CSV file
data_pitch3 = pd.read_csv('PitcherY_Pitch3.csv')

# Extract the relevant columns for visualization
time_column = 'time'
flexion_column = 'trunk_lateral_flexion_right'
twist_column = 'trunk_twist_clockwise'

# Invert the values in the trunk_lateral_flexion_right column
data_pitch3[flexion_column] *= -1

# Create the plot for trunk_lateral_flexion_right
plt.figure(figsize=(10, 6))
plt.plot(data_pitch3[time_column], data_pitch3[flexion_column])
plt.xlabel('Time (seconds)')
plt.ylabel('Glove Side (+), Arm Side (-)')
plt.title('Trunk Lateral Lean During Pitch 3')

# Format y-axis labels with degree symbol and positive/negative sign
def format_func(value, tick_number):
    if value >= 0:
        return f'{abs(value)}°'
    else:
        return f'-{abs(value)}°'

plt.gca().yaxis.set_major_formatter(FuncFormatter(format_func))

# Find the index of the highest value of right_shoulder_external_rotation
highest_value_index = data_pitch3['right_shoulder_external_rotation'].idxmax()

# Get the corresponding time for the highest value
highest_value_time = data_pitch3.loc[highest_value_index, time_column]

# Add a vertical line at the time of highest right_shoulder_external_rotation
plt.axvline(x=highest_value_time, color='magenta', linestyle='--', label='MER')

plt.grid(True)
plt.legend()
plt.show()

# Create the plot for trunk_twist_clockwise
plt.figure(figsize=(10, 6))
plt.plot(data_pitch3[time_column], data_pitch3[twist_column])
plt.xlabel('Time (seconds)')
plt.ylabel('Clockwise (+), Counter (-)')
plt.title('Trunk Twist During Pitch 3')

# Format y-axis labels with degree symbol
plt.gca().yaxis.set_major_formatter(FuncFormatter(lambda x, _: f'{x}°'))

# Add a vertical line at the time of highest right_shoulder_external_rotation
plt.axvline(x=highest_value_time, color='magenta', linestyle='--', label='MER')

plt.grid(True)
plt.legend()
plt.show()
