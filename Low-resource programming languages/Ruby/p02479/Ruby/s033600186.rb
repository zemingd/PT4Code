include Math
r = gets.chomp.to_f
s = (r ** 2 * PI).round(6)
t = (2 * r * PI).round(6)
print(s, "\s", t, "\n")