SELECT
  p1.Player,
  p1.Squad,
  p1.Born,
  p1.Gls,
  p2.GCA90,
  p1.Sh_per_90,
  p2.SCA90,
  p2.TO_GCA,
  p1.Dist,
  p1.xG,
  p1.SoT_per_90
FROM `fixing-manchester-united.manchester_utd_project.player_shooting` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_goal_and_shot_creation` AS p2
  ON p1.Squad = p2.Squad AND p1.Player = p2.Player AND p1.Born = p2.Born
WHERE (p1.Gls > 10 AND p1.SoT_per_90 > 1 AND p1.Dist < 18 AND p1.xG > 8 AND p1.Born > 2002)
   OR p1.Player = "Rasmus Højlund"
   OR p1.Player = "Joshua Zirkzee"
LIMIT 1000;
