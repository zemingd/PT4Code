K = gets.to_i
even_count = K / 2
odd_count = K / 2 + (K.odd? ? 1 : 0)
ans = even_count * odd_count
puts ans
