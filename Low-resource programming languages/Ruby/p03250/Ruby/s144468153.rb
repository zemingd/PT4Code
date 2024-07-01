ls = (gets.chomp.split.map(&:to_i)).sort().reverse()
puts ls[0] * 10 + ls[1] + ls[2]