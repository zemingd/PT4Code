n = gets.to_i
n2 = n
f = 0
while n > 0 do
  f += n % 10
  n /= 10
end

if n2 % f == 0
  puts "Yes"
else
  puts "No"
end
