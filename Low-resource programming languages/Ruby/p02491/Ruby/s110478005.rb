# coding: utf-8

input = gets
num = input.split(" ")
a = num[0].to_i
b = num[1].to_i
d = a / b
print "#{d} "
r = a % b
print "#{r} "
a = num[0].to_f
f = a / b
puts sprintf("%.5f", f)