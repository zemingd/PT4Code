x = gets.to_i
count = x / 11 * 2
x -= x / 11 * 2
count += x > 6 ? 2 : 1
puts count
