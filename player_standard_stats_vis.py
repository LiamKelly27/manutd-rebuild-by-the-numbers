import pandas as pd
import plotly.express as px

# Load the CSV
df = pd.read_csv("/Users/liamkelly/Desktop/Manchester United Data Project CSV Home/BIG5 LEAGUES PLAYER DATA/BIG5_Player_Standard_Stats_Cleaned - top5_leagues_player_data_as_of_2025_05_01 - big5_player_stats.csv")

# Filter for forwards or midfielders
df = df[df["Pos"].str.contains("FW|MF", na=False)]

# Filter for specific players (top 3 targets + current striker options)
target_players = [
    "Patrik Schick",
    "Liam Delap",
    "Rasmus Højlund",
    "Joshua Zirkzee",
    "Tim Kleindienst"
]

df = df[df["Player"].isin(target_players)]

# Create scatter plot
fig = px.scatter(
    df,
    x="xG",
    y="Gls",
    color="Player",
    hover_name="Player",
    title="xG vs. Goals for Top 3 Transfer Targets and Current Striker Options at Club",
    labels={"xG": "Expected Goals", "Gls": "Goals Scored"}
)

fig.show()

fig.write_html("xg_vs_goals.html")



