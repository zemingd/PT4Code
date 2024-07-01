gets
nums = gets.chomp.split.map(&:to_i)

cum_sums = nums.inject([]) do |arr, n|
  arr << arr.last.to_i + n
end
sum = cum_sums[-1]
diffs = (0..(nums.size - 2)).map do |i|
  sunuke = cum_sums[i]
  araiguma = sum - sunuke
  (sunuke - araiguma).abs
end
puts diffs.min