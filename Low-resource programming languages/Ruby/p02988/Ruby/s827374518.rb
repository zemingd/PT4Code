s, = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

count = 0
(s - 2).times do |i|
  count += 1 if (nums[i] < nums[i + 1] && nums[i + 1] <= nums[i + 2]) || (nums[i] >= nums[i + 1] && nums[i + 1] > nums[i + 2])
end

puts count
