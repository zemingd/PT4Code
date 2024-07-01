monster_hp,typeCnt_deathblow = gets.split(" ").map(&:to_i)
point_deathblow = gets.split(" ").map(&:to_i)

point_deathblow.each do |n|
  monster_hp = monster_hp - n
end

if monster_hp <= 0
  puts "Yes"
else
  puts "No"
end