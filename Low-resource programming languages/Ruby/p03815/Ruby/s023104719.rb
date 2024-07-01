x = gets.to_i
count = x / 11 * 2
x = x % 11
count += x < 0 ? 0 : x > 6 ? 2 : 1
puts count
