n = gets.to_i
d = gets.split.map(&:to_i)
d.sort!
bottom = d[n/2-1]
upper = d[n/2]
puts upper-bottom

