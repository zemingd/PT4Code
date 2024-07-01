x, a, b = gets.split.map(&:to_i)
if a - b >= 0
  puts "delicious"; exit
end
if a - b >= x
  puts "safe"; exit
end
puts "dangerous"; exit
