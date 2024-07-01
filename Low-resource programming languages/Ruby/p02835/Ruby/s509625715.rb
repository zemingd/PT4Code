nums = gets.split(' ').map { |n| n.to_i }

# if nums.sum > 21 sum は Ruby 2.4 以上
if nums[0] + nums[1] + nums[2] > 21
  puts "bust"
else
  puts "win"
end