h = gets.to_i
x = 1
ans = 0
while h>0
  h/=2
  ans += x
  x *= 2
end

p ans