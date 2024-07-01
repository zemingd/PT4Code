x = gets.to_i
a = 1
while (a + 1)**5 < x
    a += 1
end
b5 = (a**5 - x)
if b5 < 0
    b = -1
    while b**5 > b5
        b -= 1
    end
else
    b = 1
    while b**5 < b5
        b += 1
    end
end
puts [a, b]