a, b = gets.strip.split.map &:to_i
c = [a+b, a-b, a*b]
puts c.max