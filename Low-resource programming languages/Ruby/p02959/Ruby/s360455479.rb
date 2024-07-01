hero = gets.to_i
monster = gets.split.map(&:to_i)
damage = gets.split.map(&:to_i)
sum_of_monster = monster.inject(0, :+)
killed_monster = 0
for i in 0...(monster.length - 1 )
  if damage[i] - monster[i] > 0
    killed_monster += monster[i]
  else
    killed_monster += damage[i]
  end
  puts killed_monster
  cur_damage = damage[i] - monster[i]
  if cur_damage > 0
    alive_monster =  [monster[i + 1] - damage[i] - monster[i], 0].max
    killed_monster += monster[i + 1]
  else
    alive_monster = monster[i + 1]
  end
  monster[i + 1] = alive_monster
end

puts killed_monster