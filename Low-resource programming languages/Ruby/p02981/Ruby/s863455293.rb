N, A, B = gets.chomp.split(' ').map(&:to_i)

fee_train = N * A
fee_taxi = B

puts [fee_taxi, fee_train].min
