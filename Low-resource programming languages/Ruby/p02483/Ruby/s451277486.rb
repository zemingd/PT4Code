input = gets.chomp
str = input.split(" ")
a = str[0]
b = str[1]
c = str[2]

d = [a, b, c]
d.sort
d.reverse
puts d.join(" ")