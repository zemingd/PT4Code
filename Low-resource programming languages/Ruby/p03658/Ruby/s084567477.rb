n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = a.sort.reverse
ans = 0
for num in 0..k-1 do
  ans += b[num]
end  
p ans