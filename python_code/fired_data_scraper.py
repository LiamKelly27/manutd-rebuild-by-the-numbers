from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from bs4 import BeautifulSoup
import pandas as pd
import time

# Set up Chrome options to headless mode
options = webdriver.ChromeOptions()
options.add_argument("--headless")
options.add_argument("--disable-gpu")  # Disable GPU for headless mode

# Initialize the WebDriver 
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)

# Open FBref page
url = "https://fbref.com/en/comps/Big5/stats/squads/Big-5-European-Leagues-Stats"
driver.get(url)

# Wait for the page to load
time.sleep(5)  # Increase time if needed to make sure the page is fully loaded

# Find and click link to reveal all
try:
    squad_stats_link = driver.find_element(By.CSS_SELECTOR, "a.sr_preset[data-show='.assoc_stats_teams_standard_for']")
    squad_stats_link.click()
    time.sleep(5)  # Allow time for the table to be revealed
except Exception as e:
    print(f"Error clicking the link: {e}")

# Once the link is clicked, retrieve the page content again
soup = BeautifulSoup(driver.page_source, "html.parser")

# Find the table containing the squad stats
table = soup.find("table", {"id": "stats_teams_standard_for"})

# If the table is found, process it
if table:
    # Extract the table data into a DataFrame
    df = pd.read_html(str(table))[0]
    # Save the data to a CSV file
    df.to_csv("big5_squad_stats.csv", index=False)
    print("Data saved to big5_squad_stats.csv")
else:
    print("Could not find the table with the specified ID.")

# Close the browser
driver.quit()
