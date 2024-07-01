s = gets.chomp.chars
num_of_1 = s.sort.join.to_i.to_s.chars.size
puts s.size - ((s.size - num_of_1) - num_of_1).abs