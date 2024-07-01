# coding:utf-8

input = gets.split(" ")
number = [input[0].to_i,input[1].to_i,input[2].to_i]
number.sort!

3.times { |i|
 if i != 2
  print "#{number[i]} "
 else
  puts number[i]
 end
}