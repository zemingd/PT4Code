n, a, b = gets.chomp.split(" ").map(&:to_i)

train_fare = a * n
taxi_fare = b

min_fare = train_fare > taxi_fare ? taxi_fare : train_fare

puts min_fare