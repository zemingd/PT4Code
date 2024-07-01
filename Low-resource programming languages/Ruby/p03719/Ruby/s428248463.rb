#Created on 2017-05-13
a, b, c = gets.chop.split(" ").map(&:to_i)
if a <= c && c <= b
  puts "Yes"
else
  puts "No"
end