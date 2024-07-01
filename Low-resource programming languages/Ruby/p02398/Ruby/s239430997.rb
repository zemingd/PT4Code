x = gets()
y = x.split()

a = y[0].to_i
b = y[1].to_i
c = y[2].to_i
m = 0

while a <= b
 k = c % a
 if k == 0
  m += 1
 end
 a += 1
end

puts m
 
