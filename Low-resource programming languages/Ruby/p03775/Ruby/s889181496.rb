N = gets.to_i

require 'prime'
puts N == 1 ? 1 : N.prime_division.flat_map{|d, n| (1 .. n).map{|m| [d**m, N / d**m].max}}.min.to_s.length