# Data Dictionary

This document outlines the key variables across the cleaned datasets used in this project. Data was sourced from FBref then cleaned and transformed using Python and Google Sheets.

---

## `player_stats_cleaned/`

| Column Name            | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `player`               | Full name of the player                                                     |
| `age`                  | Player's age at season start                                                |
| `pos`                  | Primary position (e.g., ST, CM, CB, GK)                                     |
| `squad`                | Club the player played for                                                  |
| `MP`                   | Total minutes played                                                        |
| `Gls`                  | Goals scored                                                                |
| `assists`              | Assists made                                                                |
| `xG`                   | Expected Goals                                                              |
| `xA`                   | Expected Assists                                                            |
| `shots`                | Total shots taken                                                           |
| `key_passes`           | Passes that led directly to a shot                                          |
| `shot_creating_actions`| Total actions leading to a shot (e.g., dribble + pass)                      |
| `goal_creating_actions`| Total actions leading directly to a goal                                    |
| `progressive_passes`   | Passes that move the ball significantly forward                             |
| `progressive_carries`  | Carries that advance the ball 5+ yards toward goal                          |
| `passes_into_final_third` | Passes entering the attacking third                                     |
| `passes_into_penalty_area` | Passes entering the opponent's box                                    |
| `dribbles_completed`   | Successful dribbles past opponents                                          |
| `dribble_success_pct`  | Percentage of successful dribbles                                           |
| `touches_att_pen`      | Touches in the attacking penalty area                                       |
| `pressures`            | Number of times applying pressure to a ball carrier                         |
| `successful_pressures` | Number of pressures that led to regaining possession                        |
| `tackles`              | Total tackles attempted                                                     |
| `interceptions`        | Interceptions made                                                          |
| `blocks`               | Total blocks (shots, passes)                                                |
| `clearances`           | Defensive clearances                                                        |
| `fouls_committed`      | Fouls committed by the player                                               |
| `fouls_drawn`          | Fouls won by the player                                                     |
| `yellow_cards`         | Yellow cards received                                                       |
| `red_cards`            | Red cards received                                                          |
| `GCA`                  | Goal-Creating Actions                                                       |
| `SCA`                  | Shot-Creating Actions                                                       |
| `ProP`                 | Progressive Pass                                                            |
| `ProC`                 | Progressive Carries                                                         |
| `ProR`                 | Progressive Passes Received                                                 |

---

## `squad_stats_cleaned/`

| Column Name              | Description                                                             |
|--------------------------|-------------------------------------------------------------------------|
| `squad`                   | Team name                                                               |
| `matches_played`         | Games played                                                            |
| `goals_for`              | Total goals scored                                                      |
| `goals_against`          | Goals conceded                                                          |
| `xG_for`                 | Expected goals for                                                      |
| `xG_against`             | Expected goals against                                                  |
| `possession_pct`         | Average team possession percentage                                      |
| `shots_per_game`         | Average shots taken per game                                            |
| `shots_on_target_pct`    | Percentage of shots on target                                           |
| `passes_per_defensive_action` (PPDA) | A pressing intensity metric (lower = more intense pressing) |
| `avg_pass_length`        | Average length of completed passes                                      |
| `passes_completed_pct`   | Completion rate of total passes                                         |
| `tackles_per_game`       | Average number of tackles                                               |
| `interceptions_per_game` | Average number of interceptions                                         |
| `clean_sheets`           | Games with no goals conceded                                            |
| `gca_per_game`           | Goal-creating actions per match                                         |
| `sca_per_game`           | Shot-creating actions per match                                         |

---

## Notes

- **All data** is from the 2024-2025 season.
- Player and squad data were cleaned using Python (pandas) and Google Sheets it was then stored as `.csv` files.
- Additional raw data is stored in the `data/player_stats_raw/` and `data/squad_stats_raw/` folders.
