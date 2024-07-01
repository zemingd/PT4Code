n = gets.to_i
for i in 1..n
  x = gets.to_i
  y = gets.to_i
  res = x + y
  if res.to_s.length > 80 then
    puts "overflow"
  else
    puts res
  end
end