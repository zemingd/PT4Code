nums = gets.split(" ").map(&:to_i)
sum = []

sum << nums[0] + nums[1]
sum << nums[0] + nums[2]
sum << nums[1] + nums[2]

puts sum.min