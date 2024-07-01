a, b = gets.split(" ")



x = a * b.to_i
y = b * a.to_i

puts [x, y].sort.first
