n = gets.chomp.to_i
nums = gets.split.map(&:to_i)
diffs = []
(n-1).times do |i|
  diffs << (nums[0..i].inject(:+) - nums[(i + 1)..(n - 1)].inject(:+)).abs
end
puts diffs.min