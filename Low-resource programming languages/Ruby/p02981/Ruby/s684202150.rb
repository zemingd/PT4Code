input = gets.chomp.split
n = input[0].to_i
a = input[1].to_i
b = input[2].to_i

train = n * a
taxi = b

puts train < taxi ? train : taxi