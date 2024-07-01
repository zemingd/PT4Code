input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
d = a / b
r = a % b
f = a.to_f / b.to_f
print d, " ", r, " ", f ,"\n"