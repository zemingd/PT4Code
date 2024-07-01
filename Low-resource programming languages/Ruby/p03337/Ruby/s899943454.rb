input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
results = [a + b, a - b, a * b]
puts results.max