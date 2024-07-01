input = gets.chomp.split(" ").map(&:to_i).sort
puts input[0] + input[1]