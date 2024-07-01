n = gets.strip.to_i
nums = gets.strip.split(" ").map do |i|
  i.to_i
end
ans = 1
flag = true
ans = 0 if nums.include(0)
n.times{|i|
  ans *= nums[i] if flag
  flag = false if ans!=-1 && ans > 10**18
  ans = -1 unless flag
}
puts ans if flag
puts (-1) unless flag
