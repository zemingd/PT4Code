s = gets.chomp
map = {}
map["Rainy"] = "Sunny"
map["Sunny"] = "Cloudy"
map["Cloudy"] = "Rainy"
puts map[s]