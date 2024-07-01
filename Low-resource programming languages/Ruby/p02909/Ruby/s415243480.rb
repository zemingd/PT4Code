weathers = ['Sunny', 'Cloudy', 'Rainy']
weather = gets
index = weathers.index(weather)
 
if index == 0
  puts 'Cloudy'
elsif index == 1
  puts 'Rainy'
elsif index == 2
  puts 'Sunny'
end