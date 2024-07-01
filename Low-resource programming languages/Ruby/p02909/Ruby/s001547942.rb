weathers = ['Sunny', 'Cloudy', 'Rainy']

today = gets.chomp
today_index = weathers.index(today)
tommorow_index = today_index == 2 ? 0 : today_index + 1
puts weathers[tommorow_index]