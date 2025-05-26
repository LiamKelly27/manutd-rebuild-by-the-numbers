SELECT 
  p1.Player,  
  p1.Squad,
  p3 .passes_into_final_third,
  p3 .PPA,
  p1.GCA, 
  p1.SCA, 
  p1.GCA90, 
  p1.SCA90, 
  p1.TO_SCA,
  p2 .Att_3rd,
  p2 .Att_Pen,
  p2 .AGE,
  p1 .Pos
FROM `fixing-manchester-united.manchester_utd_project.player_goal_and_shot_creation` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_possession` AS p2
  ON p1.Player = p2.Player AND p1.Squad = p2.Squad
JOIN `fixing-manchester-united.manchester_utd_project.player_passing` AS p3
  ON p1 .Player = p3 .Player AND p1 .Squad = p3 .Squad
WHERE p3 .passes_into_final_third > 80 AND  p2 .Att_3rd > 400 AND p1 .GCA > 9 AND p2 .AGE < 33 AND p1 .GCA90 > .5

LIMIT 1000
