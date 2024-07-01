x, y = gets.split(' ').map(&:to_i)
if x < y
    counter = y - x
else
    x = -x
    counter = 1 + y.abs - x.abs
    counter += 1 if x != y
end

puts counter