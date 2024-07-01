nums = gets.split.map(&:to_i)
p (nums[0] - nums[1]).abs > 2 ? nums[0]*2-1 : nums.inject(:+)