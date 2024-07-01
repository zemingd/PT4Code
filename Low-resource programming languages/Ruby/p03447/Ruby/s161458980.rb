x = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i

x = x - a

while x > b
    x = x - b
end
puts(x)