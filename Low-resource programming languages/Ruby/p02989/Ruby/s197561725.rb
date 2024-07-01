given_n = STDIN.gets.chomp.to_i
nums = STDIN.gets.chomp.split(' ').map { |n| n.to_i }

nums.sort!
middle_idx = nums.size / 2 - 1
middle_smaller_num = nums[middle_idx]
middle_bigger_num = nums[middle_idx + 1]
count = middle_bigger_num - middle_smaller_num
puts count
