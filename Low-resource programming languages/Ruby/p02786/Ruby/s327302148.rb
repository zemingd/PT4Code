h = gets.to_i
i = 0
sum = 1
while true
  i += 1
  if 2 ** i > h
    break
  end
  sum += 2 ** i
end
puts sum
