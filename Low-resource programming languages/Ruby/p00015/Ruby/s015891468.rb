n = gets.to_i
i = 0
while i < n
  a = gets.to_i
  b = gets.to_i
  a += b
  if a >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000
    puts "overflow"
  else
    puts a
  end
  i += 1
end