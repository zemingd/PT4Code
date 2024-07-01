n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
(n-1).times{|i| a[i+1] += a[i]}
puts a[n-1] > x ? a.index{|e| e > x} : (a[n-1] == x ? n : n - 1)