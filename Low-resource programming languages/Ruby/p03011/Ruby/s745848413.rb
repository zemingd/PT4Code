g = gets.split.map(&:to_i)
g.sort!
g.pop
puts g.sum