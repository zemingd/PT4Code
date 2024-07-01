n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(k..n-1).each do |i|
  x = a[i-k..i-1]
  y = a[i-k+1..i]
  puts x.first < y.last ? "Yes" : "No"
end