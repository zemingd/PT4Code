n = gets.to_i
a = 5.times.map { gets.to_i }

min = a.min
puts (n / min.to_f).ceil + 4