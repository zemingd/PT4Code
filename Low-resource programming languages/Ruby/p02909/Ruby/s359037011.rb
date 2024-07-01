today = gets().chomp
weathers = "Sunny,Cloudy,Rainy".split(",")

weathers.index(today) == weathers.size() -1 ? index = 0 : index = weathers.index(today)+1


p weathers[index]