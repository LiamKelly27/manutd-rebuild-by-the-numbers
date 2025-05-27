# Man Utd Rebuild: By the Numbers ⚽📊

This project uses data analytics to propose a strategic rebuild of Manchester United's squad for the upcoming season.
All recommendations are made with the assumption that Ruben Amorim will remain the manager into next season and continue to use a 3-4-2-1 formation

## 📌 Objective
To use player and team performance metrics (including xG, xA, defensive contributions, age, and cost efficiency) to recommend realistic and data-driven signings that would improve Manchester United's overall squad balance and performance.

## 🧰 Tools Used
- Python (Selenium, Pandas)
- SQL (Google BigQuery)
- Google Sheets
- Tableau and Plotly (for data visualizations)
- Markdown (for documentation)
- Git/GitHub

## 📊 Data Sources
- FBref (Top 5 European Leagues, Liga MX, MLS, EFL Championship, Liga Brasileña, Liga Argentina, Eredivise, and Primera Liga (Portugal) )
- Transfermarkt (for estimated market value and contracts)

## ✅ Key Features
- Cleaned and structured player performance data into SQL
- Identified underperforming players based on metrics such as xG vs goals SoT_per90 vs goals
- Created visual dashboards to explore transfer targets and evaluate current strengths and weaknesses
- Built realistic transfer targets within a set budget (~£200M with Champions League,~£120 without Champions League)

## 📈 Sample Questions Explored
- Who are the best value-for-money attackers under age 24?
- Which midfielders create the most chances by GCA and SCA?
- Who are the most likely breakout stars in undervalued leagues?

📷 Visual Examples

- #### xG vs. Goals for Top 3 Transfer Targets.png
![xG vs Goals Chart](Visuals/xG%20vs.%20Goals%20for%20Top%203%20Transfer%20Targets.png)


#### Squad Progressive Carries Heatmap By Position 
![Squad Heatmap](Visuals/Man%20Utd%20Progressive%20Carries%20Production%20By%20Position.png)


| File/Folder           | Description                                     |
| --------------------- | ----------------------------------------------- |
| `data/`               | Raw CSVs & cleaned datasets                     |
| `python_code/`        | All Python scripts for scraping & visualization |
| `Visuals`             | All Tableau graphs and visualzations             |
| `player_analysis_sql` | All SQL codes used to sort players              |
| `INTRO.md`            | Context on United's historical decline and where they are now          |
| `Squad Analysis.md`   | Assessing what the squad needs                   |
| `Transfer Targets.md` | Data-backed transfer recommendations            |
| `Final_Conclusion.md` | Final rebuild summary & vision                  |

## ✍️ Author
Liam Kelly
🧠 Data Analyst in training | ⚽ Football obsessive | 🇮🇪 🇺🇸

[LinkedIn](https://www.linkedin.com/in/liam-kelly-030584225/) | [GitHub](https://github.com/LiamKelly27)
