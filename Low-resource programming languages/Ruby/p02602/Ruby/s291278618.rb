a,b,c = gets.split.map &:to_i
K = gets.to_i

count = 0
while a >= b
  b *= 2
  count += 1
end
while b >= c
  c *= 2
  count += 1
end

if K >= count
  puts 'Yes'
else
  puts 'No'
end
