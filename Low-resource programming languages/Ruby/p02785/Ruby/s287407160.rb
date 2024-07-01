input = gets.split
enemy_count = input[0].to_i
attack_count = input[1].to_i
enemies = gets.split
afterenemies = enemies.sort_by{|x| x.to_i }
afterenemies.pop(attack_count)
count = 0
afterenemies.each do |enemy|
  count += enemy.to_i
end
puts count
