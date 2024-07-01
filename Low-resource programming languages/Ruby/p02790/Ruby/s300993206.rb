input = gets.chomp.split
a = input[0]
b = input[1]

a_string = a * b.to_i
b_string = b * a.to_i

array = [a_string, b_string]
array.sort!

puts array[0]