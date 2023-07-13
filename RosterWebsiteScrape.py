import requests
from bs4 import BeautifulSoup
import gspread
from oauth2client.service_account import ServiceAccountCredentials

# Fetch the HTML content
url = 'https://ucdavisaggies.com/sports/football/roster?sort=name'
response = requests.get(url)
html_content = response.content

# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(html_content, 'html.parser')

# Scrape the names, positions, academic years, and images
names = [name.get_text() for name in soup.select('.sidearm-roster-player-name a')]
positions = [position.get_text() for position in soup.select('.sidearm-roster-player-position-short')]
academic_years = [year.find('span', class_='sidearm-roster-player-academic-year').get_text() for year in soup.select('.sidearm-roster-player')]
images = []
base_url = 'https://ucdavisaggies.com'  # Update with the website URL

for player in soup.select('.sidearm-roster-player'):
    image = player.select_one('.sidearm-roster-player-image img')
    if image and 'data-src' in image.attrs:
        image_url = base_url + image["data-src"]
        images.append(f'=IMAGE("{image_url}?width=80&quality=90", 1)')
    else:
        images.append('')

# Authenticate and access the Google Sheets document
scope = ['https://www.googleapis.com/auth/spreadsheets', 'https://www.googleapis.com/auth/drive']
credentials = ServiceAccountCredentials.from_json_keyfile_name('directed-galaxy-373800-a21335fd153a.json', scope)
client = gspread.authorize(credentials)
sheet = client.open('UC Football Athlete List').sheet1

# Prepare the data to write to Google Sheets
data = []
for name, position, academic_year, image in zip(names, positions, academic_years, images):
    data.append([name, position, academic_year, image])

# Write the data to Google Sheets
sheet.insert_rows(data, row=2)

print("Data successfully written to Google Sheets!")
