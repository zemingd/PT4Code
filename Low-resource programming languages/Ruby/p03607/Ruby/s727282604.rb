n = gets.chomp.to_i
cnt = 0
nums = []

for i in 0..n-1
  nums[i] = gets.chomp.to_i
  if(nums.count(nums[i])%2==0)
    cnt += 1
    nums.delete(nums[i])
  end
end

puts cnt