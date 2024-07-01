S = gets.chomp

a = %w(Sunny Cloudy Rainy)
puts a.rotate(a.index(S) + 1).first