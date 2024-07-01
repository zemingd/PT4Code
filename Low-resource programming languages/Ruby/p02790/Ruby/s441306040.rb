a = gets.chomp.split(' ')

result1 = ''
result2 = ''

if a[0].to_i == a[1].to_i
  for num in 0..a[0].to_i - 1 do
    result1 = result1 + a[0]
  end
  puts result1
else
  for num in 0..a[1].to_i - 1 do
    result1 = result1  + a[0]
  end

  for num in 0..a[0].to_i - 1 do
    result2 = result2  + a[1]
  end

  if result1[0] > result2[1]
    puts result2
  else
    puts result1
  end
end
