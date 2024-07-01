ns = gets.chomp.split.map(&:to_i).sort
puts (ns[2] - ns[1]) + (ns[1] - ns[0])
