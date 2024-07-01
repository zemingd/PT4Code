n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

min_diff = (a - (t - h[0] * 0.006)).abs
min_diff_index = -1

(0...n).each do |i|
  min_diff_index = i if (a - (t - h[i] * 0.006)).abs < min_diff
end

puts min_diff_index + 1
