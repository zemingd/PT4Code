h = gets.to_i

count = 0
enemies = 1
while h > 1
  h = (h / 2).floor
  count += enemies
  enemies *= 2
end

puts count + enemies