n,x = gets.split.map(&:to_i)
m = []
n.times{m << gets.to_i}

x -= m.inject(:+)
puts n + x / m.min