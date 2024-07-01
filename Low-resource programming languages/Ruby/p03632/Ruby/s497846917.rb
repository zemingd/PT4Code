input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
d = input[3].to_i

start = a > c ? a : c
finish = b < d ? b : d
seconds = finish - start

puts seconds > 0 ? seconds : 0