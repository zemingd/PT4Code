# coding: utf-8

str = ""
whlie input = gets do
  str += input
end
str.downcase!
("a".."z").each do |i|
  puts "#{i} : #{str.count(i)}"
end