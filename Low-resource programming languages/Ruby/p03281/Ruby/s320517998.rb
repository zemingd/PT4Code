require 'prime'
n = gets.to_i
a = 0
(1..n).each do |b|
  next if b.even?
  a += 1 if b.prime_division.count == 3
end
p a