n, k = gets.split.map(&:to_i)
count = 1
ans = 1   
while n >= k ** ans
  ans += 1
  count += 1
end
puts count 
