human_num, train_fare, taxi_fare = gets.chomp.split(' ').map(&:to_i)

if human_num * train_fare < taxi_fare
  puts human_num * train_fare
else
  puts taxi_fare
end