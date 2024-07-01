s = gets.chomp
weather = ['Sunny', 'Cloudy', 'Rainy']
today = weather.index(s)
puts weather[(today + 1) % 3]