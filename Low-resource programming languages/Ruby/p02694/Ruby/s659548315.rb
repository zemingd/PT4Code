a = gets.to_i
b = 100
c = 0
while a > b
    c += 1
    b = b * 101 / 100
end
puts c
