A, B = gets.chomp.split.map(&:to_i)

require "prime"
intsec = A.prime_division.map(&:first) & B.prime_division.map(&:first)
puts intsec.size + 1