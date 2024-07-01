# coding: utf-8

input = gets
num = input.split(" ")
a = num[0].to_i
b = num[1].to_i
c = num[2].to_i
if a > b
  x = a
  a = b
  b = x
end
if b > c
  x = b
  b = c
  c = x
end
if a > b
  x = a
  a = b
  b = x
end
puts "#{a} #{b} #{c}"