n = gets.to_i
x = gets.split.map(&:to_i)
p1 = x.inject(:+) / n
p2 = p1 + 1
puts [x.inject(0){ |acc, cur| acc + (p1 - cur) ** 2 }, x.inject(0){ |acc, cur| acc + (p2 - cur) ** 2 }].min