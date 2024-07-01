m = 100
x = gets.to_i
cnt = 0
while m <  x
  m *= 1.01
  m = m.to_i
  cnt += 1
end
puts cnt