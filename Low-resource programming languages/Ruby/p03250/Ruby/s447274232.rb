a, b, c = gets.split.map(&:to_i)
d = [a, b, c]
d.sort
puts d[0] * 10 + d[1] + d[2]