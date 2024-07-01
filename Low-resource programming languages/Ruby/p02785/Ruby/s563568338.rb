cnt_monster,cnt_deathblow = gets.split(" ").map(&:to_i)
monster_hp = gets.split(" ").map(&:to_i)
monster_hp = monster_hp.sort.reverse!

cnt_attack = 0

(cnt_deathblow...cnt_monster).each do |i|
  cnt_attack += monster_hp[i]
end

puts cnt_attack