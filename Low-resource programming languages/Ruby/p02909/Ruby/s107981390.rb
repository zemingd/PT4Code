def lscan; gets.split.map(&:to_i); end

str = gets.chomp

i = ['Sunny', 'Cloudy', 'Rainy'].index(str)

puts ['Sunny', 'Cloudy', 'Rainy'][i-2]