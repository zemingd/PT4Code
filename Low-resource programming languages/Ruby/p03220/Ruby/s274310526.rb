n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
min_diff = 10 ** 9
min_diff_i = nil
h.each_with_index do |x, i|
  diff = ((t * 1000 - x * 6) - a * 1000).abs
  if diff < min_diff
    min_diff = diff
    min_diff_i = i
  end
end
puts (min_diff_i + 1)
