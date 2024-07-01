n = gets.to_i
t, a = gets.split.map(&:to_f)
h = gets.split.map(&:to_f)

puts (0...h.size).min_by{|x| (t - h[x] * 0.06 - a).abs} + 1