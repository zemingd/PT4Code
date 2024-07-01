n, d = gets.chomp.split(" ").map(&:to_i)
tmp = n
ans = 0
for i in 1..n do
  
  tmp -= d + d + 1
  
  if tmp <= 0 
    ans = i
    break
  end

end

print(ans)