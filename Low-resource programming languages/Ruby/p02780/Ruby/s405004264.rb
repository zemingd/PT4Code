a = gets.chomp  
n, k = a.split(" ")
b = gets.chomp
nums = b.split(" ")
sum = 0
ans = 0
temp = []
n = n.to_i
k = k.to_i
nums.each_with_index do |n, i|
  temp[i] = (1.0 + nums[i].to_i) / 2.0
  sum += temp[i] 
  sum -= temp[i-k] if (i-k >= 0)
  ans=sum if (sum > ans)
end
p ans