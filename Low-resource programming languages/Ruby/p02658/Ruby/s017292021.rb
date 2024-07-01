_ = gets.to_i
nums = gets.split.map(&:to_i)
res = nums.inject(&:*)
puts res > 10**18 ? '-1' : res