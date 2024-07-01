gets
t, a = gets.split.map(&:to_i)
delta = (t - a) / 0.006
heights = gets.split.map(&:to_i)
diffs = heights.map { |h| (h - delta).abs }
puts diffs.index(diffs.min) + 1
