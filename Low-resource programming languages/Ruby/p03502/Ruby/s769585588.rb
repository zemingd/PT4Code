n = gets.to_i
original_n = n
sum = 0
while n > 0 do
  sum += n % 10
  n /= 10
end
if original_n % sum == 0
  puts "Yes"
else
  puts "No"
end