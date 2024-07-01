x = gets.to_i
a = 100
n = 0
while a<x
  a = a+a/100
  n += 1
end
p n
