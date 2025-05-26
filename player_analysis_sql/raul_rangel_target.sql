SELECT
p1 .Player,
p1 .Squad,
p1 .AGE,
p1 .GA90,
p1 .GA,
p2. CK,
p2 .`Stp%`,
p2 .PSxG_plus_minus,
p2 .`Launch%_minus_GK`
FROM `fixing-manchester-united.manchester_utd_project.player_goalkeeping` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_advanced_goalkeeping` AS p2
  ON p1 .Player = p2 .Player AND p1. Squad = p2 .Squad
WHERE p1 .GA90 <1.5 AND p2 .PSxG_plus_minus > 1 AND p2 .`Launch%_minus_GK` < 30 AND p2 .`Stp%` >8 AND p1 .GA > 10
LIMIT 1000
