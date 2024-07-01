n = gets.to_i
d = gets.split.map(&:to_i)
d.sort!

half = n / 2
puts d[half] - d[half - 1]