$debug = false
n, _m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort
p nums if $debug
gaps = []
(0..(nums.size-2)).each do |i|
  gaps << nums[i+1] - nums[i]
end
gaps = gaps.map.with_index{ |num, i| [num, i] }.sort{ |a, b| b[0] <=> a[0] }
# p gaps => [[90, 0], [8, 5], [7, 1], [7, 4], [3, 2], [2, 3]]
gaps = gaps[0...n-1]
# p gaps => [[90, 0], [8, 5]]
gaps = gaps.sort{ |a, b| b[1] <=> a[1] }
# p gaps => [[8, 5], [90, 0]]
cut_nums = [nums.dup]
p cut_nums if $debug
gaps[0...n-1].each do |gap|
  cut_nums = [cut_nums[0][0..(gap[1])], cut_nums[0][(gap[1]+1)..-1]] + cut_nums[1..-1]
end
p cut_nums if $debug
score = 0
cut_nums.each do |array|
  score += (array.max-array.min)
end
puts score
