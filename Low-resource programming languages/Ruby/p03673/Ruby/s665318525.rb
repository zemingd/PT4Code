n = gets.to_i
A = gets.split.map(&:to_i)
even,odd = n.times.partition(&:even?)

if n.even?
  puts (odd.reverse + even).map{|i| A[i]}.join(' ')
else
  puts (even.reverse + odd).map{|i| A[i]}.join(' ')
end