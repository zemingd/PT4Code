X = gets.chomp.to_i

res = 100.to_f
count = 0
while  res < X
  res = (res * 1.01).to_i
  count += 1
end

puts(count)