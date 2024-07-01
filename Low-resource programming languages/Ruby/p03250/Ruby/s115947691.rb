nums = gets.split.map(&:to_i).sort{|a, b| b<=>a}
puts nums[0]*10+nums[1]+nums[2]