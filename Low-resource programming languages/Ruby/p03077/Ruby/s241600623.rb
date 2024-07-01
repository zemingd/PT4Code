N = gets.to_i
A = 5.times.map { gets.to_i }

min_a = A.min

puts 4 + (N / min_a.to_f).ceil
