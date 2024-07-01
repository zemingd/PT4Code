weather=["Sunny","Cloudy","Rainy"]
today=gets.chomp
puts weather[((weather.index(today)+1)>2 ? 0 : weather.index(today)+1)]