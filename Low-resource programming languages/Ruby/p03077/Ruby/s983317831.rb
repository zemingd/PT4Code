n = gets.to_i
carried = 5.times.map{ gets.to_i }
puts (Rational(n, carried.min).ceil + 4)