nums = gets.chomp.split.sort.reverse

nums.map!(&:to_i)

puts nums[0] * 10 + nums[1] + nums[2]