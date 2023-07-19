import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv('combined_data.csv')

# Group the DataFrame by "Name" and find the maximum values for each column
max_values = df.groupby('Name').agg({
    'Body_Weight': 'max',
    'Vertical_Jump': 'max',
    'Concentric_Peak_Force_BM_N_kg': 'max'
}).reset_index()

# Save the resulting DataFrame as a new CSV file
max_values.to_csv('max_values.csv', index=False)

# Read the CSV file into a DataFrame
df = pd.read_csv('max_values.csv')

# Filter out rows where any of the required columns have missing values
df_filtered = df.dropna(subset=['Name', 'Vertical_Jump', 'Concentric_Peak_Force_BM_N_kg', 'Body_Weight'])

# Select the desired columns
filtered_data = df_filtered[['Name', 'Vertical_Jump', 'Concentric_Peak_Force_BM_N_kg', 'Body_Weight']]

# Save the filtered data as a new CSV file
filtered_data.to_csv('filtered_data.csv', index=False)

########

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import mplcursors
import numpy as np

# Read the CSV file into a DataFrame
df = pd.read_csv('filtered_data_copy.csv')

# Define the color range from blue to red
color_range = df['Body_Weight'].values

# Create a scatter plot with scalar color mapping based on Body_Weight
scatter_plot = plt.scatter(df['Concentric_Peak_Force_BM_N_kg'], df['Vertical_Jump'], c=color_range, cmap='coolwarm')

# Set the plot title and labels for x and y axes
plt.title('Vertical Jump vs. Relative Concentric Peak Force (w/ Bodyweight)')
plt.xlabel('Concentric Peak Force (N/kg)')
plt.ylabel('Vertical Jump (inches)')

# Add a regression line to the scatter plot
reg_line = np.polyfit(df['Concentric_Peak_Force_BM_N_kg'], df['Vertical_Jump'], 1)
plt.plot(df['Concentric_Peak_Force_BM_N_kg'], np.polyval(reg_line, df['Concentric_Peak_Force_BM_N_kg']), color='black')

# Calculate the R^2 value
y_pred = np.polyval(reg_line, df['Concentric_Peak_Force_BM_N_kg'])
ssr = np.sum((df['Vertical_Jump'] - y_pred) ** 2)
sst = np.sum((df['Vertical_Jump'] - np.mean(df['Vertical_Jump'])) ** 2)
r_squared = 1 - (ssr / sst)

# Format the R^2 value and display it on the plot
r_squared_text = f'R^2 = {r_squared:.2f}'
plt.text(df['Concentric_Peak_Force_BM_N_kg'].max(), df['Vertical_Jump'].min(), r_squared_text, ha='right', va='bottom')

# Create a color bar on the right side of the plot
color_bar = plt.colorbar(scatter_plot)
color_bar.set_label('Body Weight')

# Create a cursor object and format the tooltip
cursor = mplcursors.cursor(hover=True)
cursor.connect("add", lambda sel: sel.annotation.set_text(
    f" {df.loc[sel.target.index, 'Name']}\n"
    f"rCPF: {df.loc[sel.target.index, 'Concentric_Peak_Force_BM_N_kg']:.2f} [N/kg]\n"
    f"VJ: {df.loc[sel.target.index, 'Vertical_Jump']} inches\n"
    f"BW: {df.loc[sel.target.index, 'Body_Weight']} lbs"
))

# Show the plot
plt.show()
