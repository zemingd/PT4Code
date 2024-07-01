input = gets
str = input.split(" ")
a = str[0]
b = str[1]
c = str[2]

d = [a, b, c]
d.sort
puts "#{d[0]} #{d[1]} #{d[2]}"