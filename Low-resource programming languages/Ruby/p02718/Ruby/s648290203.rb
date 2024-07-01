n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
total = a.inject(:+)
puts (a[m - 1] * (4 * m) >= total) ? "Yes" : "No"
