x, a, b = gets.split.map(&:to_i)
if a - b > 0
  puts "delicious"; exit
end
if a + x - b > 0
  puts "safe"; exit
end
puts "dangerous"; exit
