hero = gets.to_i
monster = gets.split.map(&:to_i)
damage = gets.split.map(&:to_i)
sum_of_monster = monster.inject(0, :+)

for i in 0...(monster.length - 1 )
  still_alive_monster = monster[i] + monster[i + 1] - damage[i]
  monster[i + 1] = [still_alive_monster, 0].max
end
puts sum_of_monster - still_alive_monster