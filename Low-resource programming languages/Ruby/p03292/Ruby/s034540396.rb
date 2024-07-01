cost = gets.split.map(&:to_i)
puts [0,1,2].permutation.map{|a1,a2,a3| (cost[a2] - cost[a1]).abs + (cost[a2] - cost[a3]).abs }.min