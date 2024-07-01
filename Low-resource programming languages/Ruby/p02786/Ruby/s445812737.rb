h = gets.chomp.to_i

a = 1
tmpSum = 1
sum_i = 1
sum = 3
count = 1
if h == 1 then
  puts 1
elsif h <= 3 then
  puts 3
else
  tmpSum *= 2
  sum_i += tmpSum
  while sum_i<=h do
    tmpSum *= 2
    sum_i += tmpSum
    sum += tmpSum
  end
  puts(sum)
end