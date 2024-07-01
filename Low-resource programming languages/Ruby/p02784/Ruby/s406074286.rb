input = gets.split
hp = input[0].to_i
count = input[1].to_i

attacks = gets.split
attacks.each do |attack|
  hp -= attack.to_i
end

if hp < 0
  puts "No"
else
  puts "Yes"
end
