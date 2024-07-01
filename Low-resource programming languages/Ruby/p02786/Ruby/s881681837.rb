h = gets.to_i
i = 0
count = 0
while 2 ** i <= h
  count += 2 ** i
  i += 1
end

puts count
