n = gets.to_i
count = 0
m = n
while m > 0 do
  count += m % 10
  m /= 10
end
if n % count == 0
  puts "Yes"
else
  puts "No"
end
