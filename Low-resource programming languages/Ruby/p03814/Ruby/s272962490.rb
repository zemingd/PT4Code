require 'pp'

s = gets.chomp!.chars
x =  s.find_index {|x| x == 'A' }
y = s.reverse.find_index {|x| x == 'Z' }

puts s.length - x - y
