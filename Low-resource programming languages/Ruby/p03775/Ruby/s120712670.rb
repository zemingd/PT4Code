require 'prime'
n = gets.to_i
factors = n.prime_division.map { |(a, b)| [a] * b }.flatten

smallest = n.to_s.size
(factors.size - 1).times do |i|
  a = factors[0..i].inject(:*)
  b = factors[i+1..-1].inject(:*)
  p [smallest, a, b]

  smallest = [smallest, [a.to_s.size, b.to_s.size].max].min
end

puts smallest
