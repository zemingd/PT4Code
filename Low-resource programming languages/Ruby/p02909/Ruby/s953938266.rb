WEATHERS = %w(Sunny Cloudy Rainy).freeze
S = gets.chomp
index = (WEATHERS.index(S) + 1) % WEATHERS.length
puts WEATHERS[index]
