m = 10_0000
n = gets.to_i

n.times{ m *= 1.05 }

cut = m % 10000
m = m - cut + 10000 if cut > 0

puts m.to_i