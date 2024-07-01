n, k = gets.split.map(&:to_i)
res = k
res = res * (k - 1)**(n - 1) if n > 1
puts res