SELECT 
  p1.Player,  
  p1.Squad,
  p1 .AGE,
  p2 .Att_3rd,
  p2 .Att_Pen,
  p3 . Gls,
  p3 . G_per_shot,
  p1.GCA, 
  p1.SCA, 
  p1.GCA90, 
  p1.SCA90, 
  p1.TO_SCA,
FROM `fixing-manchester-united.manchester_utd_project.player_goal_and_shot_creation` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_possession` AS p2
  ON p1.Player = p2.Player AND p1.Squad = p2.Squad
JOIN `fixing-manchester-united.manchester_utd_project.player_shooting` AS p3
  ON p1 .Player = p3 .Player AND p1 .Squad = p2 .Squad
WHERE p2 .AGE < 33 AND Gls > 9 AND G_per_shot > .19 

LIMIT 1000
