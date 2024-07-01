n = STDIN.gets.strip.to_i
capacities = 5.times.map{ STDIN.gets.strip.to_i }
puts 4 + (n+(capacities.min-1)/capacities.min
