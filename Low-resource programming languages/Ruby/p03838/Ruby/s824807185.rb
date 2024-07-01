x, y = gets.split(' ').map(&:to_i)
if x < y
    counter = y - x
else
    counter = 1
    x = -x
    counter += y.abs - x.abs
    x += (counter - 1)
    counter += 1 if x != y
end

puts counter