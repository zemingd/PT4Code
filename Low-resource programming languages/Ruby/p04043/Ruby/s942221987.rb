
nums = gets.split().map(&:to_i)
nums = nums.sort

if(nums[0]==5 && nums[1]==5 && nums[2]==7)
    puts "YES"
else
    puts "NO"
end