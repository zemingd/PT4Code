x = gets.to_i
a = 100
ans = 0
while a <= x do
  a = (a * 1.01).floor
  ans += 1
end
p ans
