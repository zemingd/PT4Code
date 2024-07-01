n = gets.to_i

for i in 1..n
  a = gets.to_i
  b = gets.to_i
  c = a + b
  if c.to_s.length > 80
    puts "overflow"
  else
    puts c
  end
end