input = gets
a, b = input.split.map{|c| c.to_i}
p [a + b, a - b, a * b].max