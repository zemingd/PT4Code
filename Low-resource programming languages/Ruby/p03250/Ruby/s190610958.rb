d = gets.chomp.split(" ").map(&:to_i).sort.reverse
puts d[0]*10 + d[1] + d[2]