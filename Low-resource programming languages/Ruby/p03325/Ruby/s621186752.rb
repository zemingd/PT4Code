require "prime"

n = gets.to_i
as = gets.split.map(&:to_i).select(&:even?)

puts as.inject(0) { |r, a| r + Prime.prime_division(a)[0][1] }
