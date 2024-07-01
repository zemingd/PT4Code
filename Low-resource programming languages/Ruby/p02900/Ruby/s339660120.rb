A, B = gets.chomp.split.map(&:to_i)

require "prime"
puts (A.prime_division.map(&:first) & B.prime_division.map(&:first)) + 1