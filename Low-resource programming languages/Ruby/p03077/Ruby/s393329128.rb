n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
ans = 0
min = [a, b, c, d, e].min
if min >= n
  ans = 5
else
  ans = n / min
  ans += 1 if n % min != 0
  ans += 4
end
puts ans