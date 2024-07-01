m = 100
x = gets.chomp.to_i

y = 0
while m < x do
    m = (m * 1.01).floor
    y += 1
end

puts y
