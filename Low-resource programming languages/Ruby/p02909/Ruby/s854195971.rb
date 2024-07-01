w = %w(Sunny Cloudy Rainy)
s = gets.chomp

puts w[(w.index(s) + 1) % 3]
