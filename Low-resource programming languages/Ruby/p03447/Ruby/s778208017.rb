x = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i

result = x - a
count = (x - a) / b
puts result - b * count
