nums = gets.chomp.split(' ').map(&:to_i)
print "#{(nums[1] == 100 ? 101 : nums[1])*(100**nums[0])}"