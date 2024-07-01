n, x = gets.split.map(&:to_i)
donuts = n.times.map { gets.to_i }
puts donuts.count + (x - donuts.inject(:+)) / donuts.min