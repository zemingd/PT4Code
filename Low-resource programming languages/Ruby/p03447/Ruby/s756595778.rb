nums = readlines.map {|v| v.to_i}
mid = nums[0] - nums[1]
rest = mid - nums[2] * (mid.div(nums[2]))
print rest
