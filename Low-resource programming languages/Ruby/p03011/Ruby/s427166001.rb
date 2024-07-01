s = gets.split
t = []
a = s[0].to_i
b = s[1].to_i
c = s[2].to_i
t[0] = a + b
t[1] = a + c
t[2] = b + c
t = t.sort
puts t[0]