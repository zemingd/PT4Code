# coding: utf-8

input = gets
num = input.split(" ")
a = num[0].to_i
b = num[1].to_i
if a < b
  puts "a < b"
elsif a > b
  puts "a > b"
else
  puts "a == b"
end