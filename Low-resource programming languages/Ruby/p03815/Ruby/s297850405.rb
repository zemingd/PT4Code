x = gets.to_i
count = 0

loop do
  if x > 0
    x -= 6
    count += 1
  else
   break
  end
  if x > 0
    x -= 5
    count += 1
  else
    break
  end
end

puts count
