n = gets.chomp.to_i
nums = gets.chomp.split().map(&:to_i)
sum = 0

(nums).each do |i|
  sum += i
end

left = 0
right = sum
sa = 0
res = (nums[0]-nums[0]).abs

(nums).each do |i|
  left += i
  right -= i
  sa = left - right
  res = sa if sa.abs < res
end
puts res