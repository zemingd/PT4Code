N = gets.to_i
d = []
d = gets.split.map(&:to_i)

m = N/2
d.sort!
puts d[m]-d[m-1]