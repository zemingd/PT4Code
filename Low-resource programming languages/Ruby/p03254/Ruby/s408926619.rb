n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
(n-1).times{|i| a[i+1] += a[i]}
puts (ans = a.index{|e| e > x}) ? ans : n