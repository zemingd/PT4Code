nums = gets.split.map(&:to_i)
p nums.max - nums.min >= 2 ? nums.max*2-1 : nums.inject(:+)