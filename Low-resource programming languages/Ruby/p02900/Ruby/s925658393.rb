require 'prime'
puts gets.split.map(&:to_i).inject(&:gcd).prime_division.size + 1