n = gets.to_i
i = 0
x = 1
80.times do
  x *= 10
end

while i < n
  a = gets.to_i
  b = gets.to_i
  a += b
  if a >= x
    puts "overflow"
  else
    puts a
  end
  i += 1
end