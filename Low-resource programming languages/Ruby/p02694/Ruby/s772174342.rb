n = gets.to_i
a = 100
cnt = 0
while a < n
  cnt += 1
  a *= 1.01
  a.to_i
end
puts cnt
