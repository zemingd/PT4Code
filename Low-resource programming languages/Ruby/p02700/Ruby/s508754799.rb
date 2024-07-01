t_hp, t_atk, a_hp, a_atk = gets.split.map(&:to_i)
result = 'No'
while t_hp > 0 || a_hp > 0
  a_hp = a_hp - t_atk
  if 0 >= a_hp 
    result = 'Yes'
    break
  end
  t_hp = t_hp - a_atk
  if 0 >= t_hp 
    break
  end
end

puts result