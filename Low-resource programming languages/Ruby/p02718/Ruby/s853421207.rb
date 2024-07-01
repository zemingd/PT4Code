n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
sum = a.inject(:+)
puts a[m-1] >= (sum+1) / (4 * m) ? "Yes" : "No"
