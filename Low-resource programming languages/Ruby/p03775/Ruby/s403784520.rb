N = gets.to_i

require 'prime'
puts (N.prime? ? N : N.prime_division.flat_map{|d, n| (0 .. n).map{|m| [d**m, N / d**m].max}}.min).to_s.length