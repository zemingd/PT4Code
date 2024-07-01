n = gets.to_i
f = 0
m = n
while m > 0 do
  f += m % 10
  m /= 10
end
puts n % f == 0 ? "Yes" : "No"
