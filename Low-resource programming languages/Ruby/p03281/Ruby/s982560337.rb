require 'prime'
n = gets.to_i
a = 0
(1..n).each do |b|
  next if b.even?
  j = 1
  b.prime_division.each do |c|
    j *= (c[1]+1)
  end
  a += 1 if j == 8
end
p a