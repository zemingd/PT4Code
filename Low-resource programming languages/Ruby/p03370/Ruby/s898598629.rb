n, x = gets.split.map{|i| i.to_i }
m = []

n.times{ m << gets.to_i }

puts n + (x - m.sum) / m.min