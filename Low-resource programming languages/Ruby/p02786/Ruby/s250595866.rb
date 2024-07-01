h = gets.chomp.to_i

sum = 0
count = 0
while(h > 0) do
  h /= 2
  sum += 2 ** count
  count += 1
end

puts sum
