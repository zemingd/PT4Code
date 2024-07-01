x, y = gets.split(' ').map(&:to_i)
counter = 0

if x < y
    while x != y
        x += 1
        counter += 1
    end
else
    x = -x
    counter += 1
    while x.abs != y.abs
        x += 1
        counter += 1
    end
    counter += 1 if x != y
end

puts counter