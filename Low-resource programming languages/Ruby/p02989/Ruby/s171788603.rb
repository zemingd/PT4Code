n = gets.to_i
d = gets.split.map(&:to_i).sort
m = n / 2
puts d[m] - d[m-1]
