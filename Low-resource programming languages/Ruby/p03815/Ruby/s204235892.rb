x = gets.to_i
ans = 0
ans += (x/11)*2
if x-11*(x/11) <= 6
  ans += 1
else
  ans += 2
end
puts ans