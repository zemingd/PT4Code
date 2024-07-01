x = gets.to_i
a = 100
ans = 0
while true
  a = (a*101)/100
  ans += 1
  if a >= x
    break
  end
end
puts ans