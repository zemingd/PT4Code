n = gets.to_i
sum = 0
num = n
while num>0 do
  sum += num%10
  num /= 10
end
puts n % sum == 0 ? "Yes" : "No"
