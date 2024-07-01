x,y,z = gets.split.map(&:to_i)
a = x
x = y
y = a
b = x
x = z
z = b
print x
print ' '
print y
print ' '
print z
