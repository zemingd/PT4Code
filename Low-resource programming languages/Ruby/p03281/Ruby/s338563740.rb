n = gets.to_i
ans = 0
for i in 1..n
  temp = 0
  if i%2 == 1
    for j in 1..i
      temp += 1 if i%j == 0
    end
    ans += 1 if temp == 8
  end
end
puts ans