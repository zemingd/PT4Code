n = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
 
res = 0
(1..n-2).each do |i|
  res += 1 if (nums[i-1] < nums[i] && nums[i] < nums[i+1]) || (nums[i+1] < nums[i] && nums[i] < nums[i-1])
end
 
puts res