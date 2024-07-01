K = gets.to_i

even = K / 2
odd = K / 2 + (K.odd? ? 1 : 0)

puts even * odd
