s = gets.chomp
weather = %w(Sunny Cloudy Rainy)

today = weather.index(s)
tommorow = (weather.index(s) == 2) ? 0 : (weather.index(s) + 1)

puts weather[tommorow]
