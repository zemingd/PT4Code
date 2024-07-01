n = gets.to_i
t,a = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)
s = h.map{ |i| (t - i * 0.006 - a).abs }
print s.index(s.min) + 1