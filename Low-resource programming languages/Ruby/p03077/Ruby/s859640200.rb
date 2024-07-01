n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

#    s  a  b  c  d  e <- 各場所の人数
s = [n, 0, 0, 0, 0, 0]
x = [a, b, c, d, e]

min = x.min
if min > n
  p 5
else
  bottle_neck = n.div(min) + n%min
  p bottle_neck+4
end