nums = gets.split.map(&:to_i)
divi = 0

for num in nums[0]..nums[1]
  if(nums[2]%num == 0) 
    divi += 1
  end
end

puts divi