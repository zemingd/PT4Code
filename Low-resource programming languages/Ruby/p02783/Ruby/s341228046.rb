hp,attack = gets.split(' ').map(&:to_i)
attack_point = 0
count = 0
while hp > attack_point do 
  attack_point += attack
  count += 1
end

puts count