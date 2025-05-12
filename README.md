# Man Utd Rebuild: By the Numbers ⚽📊

This project uses data analytics to propose a strategic rebuild of Manchester United's squad for the upcoming season.
All recommendations are made with the assumption that Ruben Amorim will remain the manager into next season and continue to use a 3-4-2-1 formation

## 📌 Objective
To use player and team performance metrics (including xG, xA, defensive contributions, age, and cost efficiency) to recommend realistic and data-driven signings that would improve Manchester United's overall squad balance and performance.

## 🧰 Tools Used
- Python (Selenium, Pandas)
- SQL (Google BigQuery)
- Google Sheets
- Tableau (for data visualization)
- Git/GitHub

## 📊 Data Sources
- FBref (Top 5 European Leagues)
- Transfermarkt (for estimated market value and contracts)

## ✅ Key Features
- Cleaned and structured player performance data into SQL
- Identified underperforming players based on metrics such as xG vs goals SoT_per90 vs goals
- Created visual dashboards to explore transfer targets
- Built realistic transfer targets within a set budget (~£200M with Champions League,~£120 without Champions League)

## 📈 Sample Questions Explored
- Who are the best value-for-money attackers under age 24?
- Which defenders outperform their xGA or tackle rates?
- Who are the most likely breakout stars in undervalued leagues?

## 📁 Folder Structure
manutd-rebuild-by-the-numbers/
│
├── README.md                # Project overview and documentation
│
├── data/
│   ├── raw/                 # Raw CSVs and scraped files (FBref exports)
│   └── cleaned/             # Cleaned data ready for analysis or SQL import
│
├── sql/
│   ├── schema.sql           # Table creation and structure
│   └── queries/             # Individual SQL queries used in analysis
│
├── analysis/
│   ├── notebooks/           # Jupyter or Colab notebooks 
│   └── scripts/             # Python files for scraping, cleaning, etc.
│
├── visuals/
│   ├── charts/              # Static visualizations (PNGs from Tableau)
│   └── dashboards/          # Screenshots and links to Tableau dashboards
│
└── reports/
    └── final_report.md      # Written analysis and conclusions
