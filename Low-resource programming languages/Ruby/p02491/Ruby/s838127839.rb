#coding utf-8
input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
puts "#{a/b} #{a%b} #{sprintf('%.5f',a.to_f/b.to_f)}"