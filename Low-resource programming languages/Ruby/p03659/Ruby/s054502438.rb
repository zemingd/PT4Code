gets
sums = gets.chomp.split.map(&:to_i)

max_index = sums.size - 1
diffs = (0..(max_index - 1)).map do |i|
  (sums[0..i].inject(&:+) - sums[(i + 1)..max_index].inject(&:+)).abs
end
puts diffs.min