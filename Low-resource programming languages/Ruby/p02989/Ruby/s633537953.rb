n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i).sort
puts d[n/2] - d[n/2-1]
