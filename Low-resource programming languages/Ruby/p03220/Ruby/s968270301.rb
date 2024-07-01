n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

min_diff = ((t - h[0] * 0.006) - a).abs
min_diff_index = 0

(1...n).each do |i|
  min_diff_index = i if ((t - h[i] * 0.006) - a).abs < min_diff
end

puts min_diff_index + 1
