a = gets.to_i
b = gets.to_i
ans = 0
2.times do
  if a >= b
    ans += a
    a -= 1
  else
    ans += b
    b -= 1
  end
end
p ans