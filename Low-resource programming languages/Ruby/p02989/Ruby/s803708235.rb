n = gets.to_i
d = gets.split().map(&:to_i).sort

half = d.size/2

puts d[half] - d[half-1]

