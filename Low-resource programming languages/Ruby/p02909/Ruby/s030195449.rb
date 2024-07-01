weathers = ["Sunny", "Cloudy", "Rainy"]

weather = gets.chomp

puts weathers[(weathers.index(weather) + 1) % 3]


