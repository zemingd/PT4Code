N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'
puts As.inject(0){|s, a| s + (a.prime_division.to_h[2] || 0)}