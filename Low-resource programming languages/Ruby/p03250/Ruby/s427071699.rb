input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

integers = [a, b, c]
integers.sort!.reverse!

puts integers[0] * 10 + integers[1] + integers[2]