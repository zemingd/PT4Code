a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i

x = 10
a2 = a%10
if a2 != 0 && a2 < x
  x = a2
end
b2 = b%10
if b2 != 0 && b2 < x
  x = b2
end
c2 = c%10
if c2 != 0 && c2 < x
  x = c2
end
d2 = d%10
if d2 != 0 && d2 < x
  x = d2
end
e2 = e%10
if e2 != 0 && e2 < x
  x = e2
end
answer = (a+9)/10*10 + (b+9)/10*10 + (c+9)/10*10 + (d+9)/10*10 + (e+9)/10*10 - 10 + x
puts answer