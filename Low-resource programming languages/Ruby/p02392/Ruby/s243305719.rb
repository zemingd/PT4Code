nums = gets.split()

a = nums[0].to_i
b = nums[1].to_i
c = nums[2].to_i

if a < b && b < c
  puts "Yes"
else
  puts "No"
end