# coding: utf-8

input = ""

loop do
  input += gets
  break unless input = gets
end
input.downcase!
for a..z |i|
  puts "#{i} : #{input.count(i)}"
end