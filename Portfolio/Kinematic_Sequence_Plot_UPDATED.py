import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file
data_pitch5 = pd.read_csv('PitcherY_Pitch5.csv')

# Extract the relevant columns for visualization
time_column = 'time'
twist_column = 'trunk_twist_clockwise'
external_rotation_column = 'right_shoulder_external_rotation'
elbow_flexion_column = 'right_elbow_flexion'
adduction_column = 'right_shoulder_adduction'
foot_contact_column = 'foot_contact_time'
ball_release_column = 'ball_release_time'

# Invert the values in the right_shoulder_adduction column and rename it to right_shoulder_abduction
data_pitch5['right_shoulder_abduction'] = -data_pitch5[adduction_column]

# Compute angular velocity by taking the derivative of the specified columns
data_pitch5['angular_velocity_twist'] = data_pitch5[twist_column].diff() / data_pitch5[time_column].diff()
data_pitch5['angular_velocity_external_rotation'] = data_pitch5[external_rotation_column].diff() / data_pitch5[time_column].diff()
data_pitch5['angular_velocity_elbow_flexion'] = data_pitch5[elbow_flexion_column].diff() / data_pitch5[time_column].diff()
data_pitch5['angular_velocity_shoulder_abduction'] = data_pitch5['right_shoulder_abduction'].diff() / data_pitch5[time_column].diff()

# Create the plot for angular velocity of the specified columns
plt.figure(figsize=(10, 6))

# Trunk Twist Clockwise Angular Velocity (in orange)
plt.plot(data_pitch5[time_column], data_pitch5['angular_velocity_twist'], label='Trunk (Clockwise [+], Counter [-])', color='orange')

# Right Shoulder External Rotation Angular Velocity (in default blue)
plt.plot(data_pitch5[time_column], data_pitch5['angular_velocity_external_rotation'], label='Shoulder Rotation (Ext [+], Int [-])', color='tab:blue')

# Right Elbow Flexion Angular Velocity (in grey)
plt.plot(data_pitch5[time_column], data_pitch5['angular_velocity_elbow_flexion'], color='grey', label='Elbow (Flex [+], Ext [-])')

# Right Shoulder Abduction Angular Velocity (in magenta)
plt.plot(data_pitch5[time_column], data_pitch5['angular_velocity_shoulder_abduction'], color='magenta', label='Shoulder Abduction (Abd [+], Add [-])')

plt.xlabel('Time (seconds)')
plt.ylabel('Angular Velocity (°/s)')
plt.title('PitcherY Kinematic Sequence During Pitch 5')
plt.grid(True)

# Find the index of the foot contact time and ball release time equal to 0
foot_contact_time_zero = data_pitch5[data_pitch5[foot_contact_column] == 0][time_column].values
ball_release_time_zero = data_pitch5[data_pitch5[ball_release_column] == 0][time_column].values

# Add vertical lines at foot contact and ball release times
plt.axvline(x=foot_contact_time_zero, color='green', linestyle='--', label='Foot Contact')
plt.axvline(x=ball_release_time_zero, color='red', linestyle='--', label='Ball Release')

# Set x-axis limits to 0 to 2.5 seconds
plt.xlim(0, 2.5)

# Set y-axis limits to -2500 to 2500
plt.ylim(-2500, 2500)

# Format y-axis labels with degree symbol
plt.gca().yaxis.set_major_formatter('{:.0f}°/s'.format)

plt.legend()
plt.show()
