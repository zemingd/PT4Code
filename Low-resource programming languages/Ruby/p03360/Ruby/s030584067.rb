input1 = gets
input2 = gets.chomp.to_i
nums = input1.split(" ")

max = nums.max.to_i
nums.delete_at(nums.index(max.to_s))

input2.times{
  max = max * 2
}

puts(nums[0].to_i + nums[1].to_i + max)