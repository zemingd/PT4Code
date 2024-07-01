x = gets.to_i
sum = 100
count = 0
while sum <= x do
  sum *= 1.01
  count += 1
end

puts count