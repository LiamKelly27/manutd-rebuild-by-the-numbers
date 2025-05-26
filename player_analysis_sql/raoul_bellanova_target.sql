SELECT 
  p1.Player,
  p1.Squad,
  p1.AGE,
  p1.Pos,
  p1.carries_into_final_third,
  p2.GCA90,
  p3.Clr,
  p2 .PassLive_GCA,
p2 .PassLive_SCA
FROM `fixing-manchester-united.manchester_utd_project.player_possession` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_goal_and_shot_creation` AS p2
  ON p1.Player = p2.Player AND p1.Squad = p2.Squad
JOIN `fixing-manchester-united.manchester_utd_project.player_defensive_actions_final` AS p3
  ON p1.Player = p3.Player AND p1.Squad = p3.Squad
WHERE p1.AGE < 26 
  AND p1.carries_into_final_third > 20 
  AND p2.GCA90 > 0.40
  AND p1.Pos IN ('DF', 'MF')
  AND p3. Clr > 30
LIMIT 1000
