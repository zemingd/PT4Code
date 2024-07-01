n = gets.to_i
f = 0
f += n % 10
n /= 10
while n > 9 do
  f += n % 10
  n /= 10
end

if n % f == 0
  puts "Yes"
else
  puts "No"
end
