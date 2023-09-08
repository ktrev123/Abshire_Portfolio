import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator, FuncFormatter

def plot_angular_velocity(filename):
    # Load the CSV file
    data = pd.read_csv(filename)

    # Extract the relevant columns for visualization
    time_column = 'time' 
    shoulder_angle_column = 'right_shoulder_external_rotation' 
    foot_contact_column = 'foot_contact_time'  
    ball_release_column = 'ball_release_time'  

    angle_data = data[[time_column, shoulder_angle_column, foot_contact_column, ball_release_column]]

    # Calculate the change in angle and time for shoulder
    angle_data['shoulder_angle_diff'] = angle_data[shoulder_angle_column].diff()
    angle_data['time_diff'] = angle_data[time_column].diff()

    # Calculate the angular velocity in degrees per second for shoulder
    angle_data['shoulder_angular_velocity'] = angle_data['shoulder_angle_diff'] / angle_data['time_diff']

    # Create a line plot for shoulder angular velocity
    plt.plot(angle_data[time_column], angle_data['shoulder_angular_velocity'])
    plt.xlabel('Time (seconds)')
    plt.ylabel('Ext (+), Int (-)')
    
    # Extract "Pitch X" from the filename
    pitch_x = filename.split('.')[0].replace('PitcherY_Pitch', 'Pitch ')
    plt.title(f'Angular Velocity of Right Shoulder During {pitch_x}')

    plt.grid(True)

    # Add a vertical line for ball release when ball_release_time = 0
    ball_release_time = angle_data.loc[angle_data[ball_release_column] == 0, time_column]
    if not ball_release_time.empty:
        ball_release_time = ball_release_time.iloc[0]
        plt.axvline(x=ball_release_time, color='red', linestyle='--', label='Ball Release')

    # Add a vertical line for foot contact when foot_contact_time = 0
    foot_contact_time = angle_data.loc[angle_data[foot_contact_column] == 0, time_column]
    if not foot_contact_time.empty:
        foot_contact_time = foot_contact_time.iloc[0]
        plt.axvline(x=foot_contact_time, color='green', linestyle='--', label='Foot Contact')

    # Format y-axis labels with degree symbol and positive/negative sign without decimals
    def format_func(value, tick_number):
        if value >= 0:
            return f'{int(abs(value))}°/s'
        else:
            return f'-{int(abs(value))}°/s'

    plt.gca().yaxis.set_major_formatter(FuncFormatter(format_func))

    plt.legend()

    # Set fixed y-axis range for all plots
    plt.ylim(-3000, 3000)

    # Limit x-axis range for PitcherY_Pitch2.csv
    if filename == 'PitcherY_Pitch2.csv':
        plt.xlim(3, max(angle_data[time_column]))

    # Limit x-axis range for PitcherY_Pitch3.csv
    if filename == 'PitcherY_Pitch3.csv':
        plt.xlim(2, max(angle_data[time_column]))

    # Limit x-axis range for PitcherY_Pitch5.csv
    if filename == 'PitcherY_Pitch5.csv':
        plt.xlim(0, 2.5)

    plt.show()

# List of filenames to plot
filenames = ['PitcherY_Pitch2.csv', 'PitcherY_Pitch3.csv', 'PitcherY_Pitch5.csv']

# Create a separate plot for each CSV file
for filename in filenames:
    plot_angular_velocity(filename)
