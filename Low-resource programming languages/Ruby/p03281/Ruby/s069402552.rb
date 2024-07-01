require 'prime'
n = gets.to_i
a = 0
(1..100).eacd do |b|
  a += if b.prime_division.count == 8
end
p a
  
