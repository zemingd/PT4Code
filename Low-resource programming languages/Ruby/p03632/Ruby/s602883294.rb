a, b, c, d = gets.strip.split.map(&:to_i)

lower = [a,c].max
upper = [b,d].min
puts [0, upper-lower].max