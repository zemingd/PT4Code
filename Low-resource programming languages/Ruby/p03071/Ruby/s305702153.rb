a, b = gets.split.map(&:to_i)
max = a > b ? a : b
max == a ? a -= 1 : b -= 1
sum = max
max = a > b ? a : b
max == a ? a -= 1 : b -= 1
sum += max
puts sum