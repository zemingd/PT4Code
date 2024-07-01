hp = gets.to_i
count = 0

while hp > 1
  hp /= 2
  count += 1
end

atack = 0
(0..count).each do |i|
  atack += 2 ** i
end

puts atack
