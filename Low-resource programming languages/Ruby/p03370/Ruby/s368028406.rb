n, x = gets.split(" ").map{|i| i.to_i }
m = n.times.map{ gets.to_i }

puts n + (x - m.inject(:+)) / m.min