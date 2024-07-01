n = gets.chomp.to_i

nums = gets.chomp.split(" ").map(&:to_i)

multi = nums.length
ans = 1

multi.times do |i|
  ans *= nums[i]
end

if ans > 10 ** 18
  puts -1
else
  puts ans
end
  