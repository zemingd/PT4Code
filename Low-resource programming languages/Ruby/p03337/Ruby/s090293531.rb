a = gets.split.map(&:to_i)
b = a[0] + a[1]
c = a[0] - a[1]
d = a[0] * a[1]
f = b,c,d
puts f.max
