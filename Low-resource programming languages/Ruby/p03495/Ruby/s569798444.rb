require 'set'
N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
a = A.to_set.map{ |e| A.count(e) }.sort

if K>=a.size
  puts 0
else
  c = a[0, a.size-K]
  puts c.inject(:+)
end
