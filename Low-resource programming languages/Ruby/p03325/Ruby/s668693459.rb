require 'prime'

N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0

A.each do |a|
  ans += a.prime_division.to_h[2] || 0
end

puts ans
