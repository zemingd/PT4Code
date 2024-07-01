S = gets.chomp
T = %w[Sunny Cloudy Rainy Sunny]
puts T[T.find_index {|x| x == S}.next]
