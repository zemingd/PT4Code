n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

puts (0...h.size).min_by{|x| (t - h[x] * 0.06 - a).abs} + 1