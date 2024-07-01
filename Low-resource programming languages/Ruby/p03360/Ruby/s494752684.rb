a, b, c = gets.split.map(&:to_i)
k = gets.chomp.to_i
m = [a, b, c].max
r = [a, b, c] - [m]
puts m * 2 ** k + r.first + r.last
