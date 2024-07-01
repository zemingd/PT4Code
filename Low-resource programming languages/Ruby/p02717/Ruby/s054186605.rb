a = gets.split.map(&:to_i) 

a[0], a[1] =a[1], a[0]
a[0], a[2] =a[2], a[0]

i = " "

print a[0], i, a[1], i, a[2]