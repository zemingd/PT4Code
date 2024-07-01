x = gets.to_i
count = x / 11 * 11
x -= x / 11
count += x > 6 ? 2 : 1
puts count
