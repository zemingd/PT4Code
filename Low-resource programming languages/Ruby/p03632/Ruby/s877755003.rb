input = gets.split.map(&:to_i)
puts [[input[1],input[3]].min - input[2],0].max