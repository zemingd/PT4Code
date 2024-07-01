x = gets.to_i
a = 100
cnt = 0
while a<x
  a *= 1.01
  a = a.to_i
  cnt += 1
end

p cnt
