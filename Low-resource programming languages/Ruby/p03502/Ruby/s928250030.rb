N = gets.to_i
sum = 0
t = N;

while t > 0 do
  sum += t % 10
  t = t/10
end

if N % sum == 0
  puts "Yes"
else
  puts "No"
end