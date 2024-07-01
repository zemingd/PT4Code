# coding: utf-8

loop{
 input = gets.split(" ")
 a = input[0].to_i
 b = input[1].to_i
 if a == 0 && b == 0 then
  break
 elsif a <= b
  puts "#{a} #{b}"
 else
  puts "#{b} #{a}"
 end
}