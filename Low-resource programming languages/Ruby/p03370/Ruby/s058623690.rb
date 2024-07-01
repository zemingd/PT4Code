n, x = gets.split.map(&:to_i)
m = n.times.map{gets.to_i}
r = x - m.inject(:+)

puts n + r / m.min.floor