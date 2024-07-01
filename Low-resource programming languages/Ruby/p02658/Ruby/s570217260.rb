n = gets.strip.to_i
nums = gets.strip.split(" ").map do |i|
  i.to_i
end
ans = 1
flag = true
n.times{|i|
  ans *= nums[i]
  
  flag = false if !flag || ans >= 10**18
  ans = -1 unless flag
}
puts ans if flag
puts (-1) unless flag