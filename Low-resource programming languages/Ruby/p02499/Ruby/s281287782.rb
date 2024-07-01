# coding: utf-8

str = ""
whlie input = gets do
  str += input
str.downcase!
("a".."z").each do |i|
  puts "#{i} : #{str.count(i)}"
end