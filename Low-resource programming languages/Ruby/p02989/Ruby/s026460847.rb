gets
nums = gets.split.map(&:to_i).sort()
puts nums[nums.size() / 2] - nums[nums.size() / 2 - 1]
