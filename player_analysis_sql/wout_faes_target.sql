SELECT 
p1 .Player,
p1 .Squad,
p1 .AGE,
p1 .Tkl_on_dribbler,
p2 .Cmp_total,
p2 .`Cmp%_medium`,
p2 .`Cmp%_short`,
p1 .`Tkl+Int`,
p1. Pos,
p2. Att_short,
p1 .Err
FROM `fixing-manchester-united.manchester_utd_project.player_defensive_actions_final` AS p1
JOIN `fixing-manchester-united.manchester_utd_project.player_passing` AS p2
  ON p1 .Squad = p2 .Squad AND p1 .Player = p2 .Player
WHERE p1 .AGE > 23 AND p2.`Cmp%_medium` > 89 AND `Cmp%_short` > 92  AND p1.Tkl+Int > 50 AND p1 .Pos = ('DF') AND p2 .Att_short > 300 AND `Tkl+Int` > 60
