X = gets.to_i
x = 100
y = 0
while x < X
    y += 1
    x += x / 100
end
puts y
