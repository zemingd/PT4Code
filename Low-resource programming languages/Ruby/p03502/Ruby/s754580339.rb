n = gets.to_i
t = n
x = 0
while t > 0
  x += t%10
  t /= 10
end

puts n%x == 0 ? "Yes" : "No"
