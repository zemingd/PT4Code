a = %w(Sunny Cloudy Rainy)
puts a[(a.index(gets.chomp)+1) % 3]