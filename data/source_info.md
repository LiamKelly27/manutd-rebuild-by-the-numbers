# Data Sources

## `/data/player_stats_raw/`
- Scraped from [FBref](https://fbref.com) using a custom Python script.
- Includes raw stats from the Premier League and 11 other top leagues worldwide.

## `/data/player_stats_cleaned/`
- Cleaned and reformatted using Python (pandas) and Google Sheets.
- Columns were standardized to support consistent analysis (e.g., expected goals [xG], key passes, age, nationality).

## `/data/squad_stats_raw/`
- Scraped from [FBref](https://fbref.com).
- Includes raw team-level stats from the same top leagues mentioned above.

## `/data/squad_stats_cleaned/`
- Cleaned to provide a clearer picture of how Premier League teams perform.
- Helps identify strengths and weaknesses by key statistical areas (e.g., defensive metrics, final-third productivity).

