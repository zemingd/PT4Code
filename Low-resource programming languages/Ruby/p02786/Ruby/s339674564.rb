H = gets.to_i
h = H
i = 1
while h > 0
    h /= 2
    i *= 2
end
puts i - 1