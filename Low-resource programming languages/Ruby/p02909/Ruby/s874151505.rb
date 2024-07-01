s = gets.chomp
weathers = ["Sunny", "Cloudy", "Rainy"]
next_index = weathers.index(s)+1
next_index -= 3 if next_index > 2
puts weathers[next_index]