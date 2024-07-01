y = gets.to_i
x = 100
i = 0
loop do
  x = x*1.01
  x = x.to_i
  i+=1
  if x >= y then
    puts(i)
    break
  end
end
  