N = gets.chomp.to_i
capacities = 5.times.map { gets.chomp.to_i }

puts N / capacities.min + 5