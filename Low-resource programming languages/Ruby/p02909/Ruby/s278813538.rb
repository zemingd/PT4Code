weather = ['Sunny', 'Cloudy', 'Rainy']
today = gets.chomp
yesterday = weather[(weather.index(today) + 1) % 3]
print(yesterday)