costs = gets.chomp.split(" ").map(&:to_i).sort!
puts (costs[2]-costs[0])