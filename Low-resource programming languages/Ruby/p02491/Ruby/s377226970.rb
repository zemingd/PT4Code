#coding: utf-8

input = gets.split(" ")

a = input[0].to_i
b = input[1].to_i

puts sprintf("%d %d %.6f",a/b,a%b,a/b.to_f)