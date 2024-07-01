even, odd = gets.split.map(&:to_i)

puts (even*(even-1)) / 2 + odd(*(odd-1)) / 2