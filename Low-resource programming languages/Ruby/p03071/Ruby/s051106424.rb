a, b = gets.split.map &:to_i

x, y = [a, a-1, b, b-1].sort[-2..-1]
puts x+y
