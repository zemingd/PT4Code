monster_hp = gets.to_i
cnt_monster_arr = [1]

i = 0

while monster_hp > 1 do
  monster_hp = monster_hp/2
  cnt_monster_arr[i+1] = cnt_monster_arr[i]*2
  i += 1
end

puts cnt_monster_arr.sum