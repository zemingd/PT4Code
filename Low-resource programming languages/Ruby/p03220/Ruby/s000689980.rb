n = gets.to_i
t, a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

h = hs.min_by { |x| (t - x * 0.006 - a).abs }
puts hs.index(h) + 1