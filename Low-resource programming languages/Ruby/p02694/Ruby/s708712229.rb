x = gets.to_i
y = 100

puts (1..).find { (y = y * 101 / 100) >= x }
