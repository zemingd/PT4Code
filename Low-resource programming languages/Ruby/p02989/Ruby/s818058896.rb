n = gets.to_i
D = gets.split.map(&:to_i).sort

puts D[n/2] - D[n/2-1]