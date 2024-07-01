n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(k).upto(n-1) {|i| puts a[i] > a[i-k] ? "Yes" : "No"}