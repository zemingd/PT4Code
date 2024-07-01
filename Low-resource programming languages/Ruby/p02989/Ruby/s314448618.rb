n = gets.to_i
d = gets.chomp.split(" ").map(&:to_i).sort
indi = n/2
puts d[indi] - d[indi-1]
