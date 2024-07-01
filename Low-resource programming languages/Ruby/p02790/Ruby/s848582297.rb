a, b = gets.split.map(&:to_i)
s = a.to_s * b
t = b.to_s * a
puts [s, t].sort[0]