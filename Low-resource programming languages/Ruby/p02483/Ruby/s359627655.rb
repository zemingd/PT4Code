input = gets
str = input.split(" ")
a = str[0].to_i
b = str[1].to_i
c = str[2].to_i

d = [a, b, c].sort
p d.reverse!