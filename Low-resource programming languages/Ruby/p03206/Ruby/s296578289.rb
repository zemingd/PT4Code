n = gets.to_i
p = n.times.map { gets.to_i }

puts p.inject(:+) - (p.max / 2).round