x=gets.to_i
n=x/11
ans = 2 * n
x -= 11 * n
if x > 0
  ans += 1
  x -= 6
end
if x > 0
  ans += 1
end
p ans