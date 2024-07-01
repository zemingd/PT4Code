x = gets.to_i

count = x / 11
count *= 2
if (x - count) <= 6
  count += 1
else
  count += 2
end

p count
