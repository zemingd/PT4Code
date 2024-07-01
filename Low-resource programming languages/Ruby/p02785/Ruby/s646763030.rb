input = gets.split
attack_count = input[1].to_i
enemies = gets.split
enemies.pop(attack_count)
count = 0
enemies.each do |enemy|
  count += enemy.to_i
end
puts count