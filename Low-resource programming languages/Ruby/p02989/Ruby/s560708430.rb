n = gets.to_i
d = gets.split.map(&:to_i)
d = d.sort
puts d[(n/2).floor] - d[(n/2).floor-1]
