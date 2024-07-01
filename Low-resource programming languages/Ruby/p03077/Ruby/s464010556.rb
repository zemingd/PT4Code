N = gets.to_i
cap = 5.times.map{gets.to_i}.min
puts ((N + cap - 1) / cap) + 4
