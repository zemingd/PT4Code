ss = gets.split(' ')
count = 0
nums = [ss[0].to_i,ss[1].to_i]
(nums[1].to_i - nums[0].to_i+1).times do |i|
  (count += 1) if ((i+nums[0]).to_s == (i+nums[0]).to_s.reverse) 
  
end
print count