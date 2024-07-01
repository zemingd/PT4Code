n, x = gets.split.map(&:to_i)
mn = n.times.map { gets.to_i }

puts mn.size + ((x - mn.inject(:+)) / mn.min)
