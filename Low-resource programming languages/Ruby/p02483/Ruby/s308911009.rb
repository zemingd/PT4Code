input = gets
str = input.split(" ")
a = str[0].chomp
b = str[1].chomp
c = str[2].chomp

d = [a, b, c]
d.sort
puts "#{d[0]} #{d[1]} #{d[2]}"