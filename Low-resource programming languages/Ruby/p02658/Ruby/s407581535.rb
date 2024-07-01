n = gets.strip.to_i
nums = gets.strip.split(" ").map do |i|
  i.to_i
end
ans = 1
flag = true
n.times{|i|
  ans *=nums[i]
  
    ans = 0 if ans > 10000000000000000
    flag = false  if ans > 10000000000000000          
}
puts ans if flag
puts (-1) unless flag