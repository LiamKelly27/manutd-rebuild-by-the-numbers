import pandas as pd
import plotly.express as px

# Load the CSV
df = pd.read_csv("/Users/liamkelly/Desktop/Manchester United Data Project CSV Home/BIG5 LEAGUES PLAYER DATA/BIG5_Player_Standard_Stats_Cleaned - top5_leagues_player_data_as_of_2025_05_01 - big5_player_stats.csv")

# Filter to limit player selectio to only forwards or midfielders
df = df[df["Pos"].str.contains("FW|MF", na=False)]

# Filter for transfer targets and current strikers 
target_players = [
    "Patrik Schick",
    "Liam Delap",
    "Rasmus Højlund",
    "Joshua Zirkzee",
    "Tim Kleindienst"
]
df = df[df["Player"].isin(target_players)]

# Plotly chart
fig = px.scatter(
    df,
    x="xG",
    y="Gls",
    color="Player",
    hover_name="Player",
    title="xG vs. Goals for Top Striker Targets and Current Options",
    labels={"xG": "Expected Goals", "Gls": "Goals Scored"}
)

# Save as PDF
fig.write_image("xg_vs_goals_chart.pdf", format="pdf", width=800, height=600)
