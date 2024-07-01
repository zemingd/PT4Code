WEATHER = ['Sunny', 'Cloudy', 'Rainy']

s = gets

current_pos = WEATHER.index(s.chop) || 0
next_pos = (current_pos + 1) % WEATHER.size

puts WEATHER[next_pos]

