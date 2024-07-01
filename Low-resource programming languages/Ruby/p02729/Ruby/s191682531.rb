n, m = gets.chomp.split(" ").map(&:to_i)
n1 = n*(n-1) / 2
n2 = m*(m-1) / 2
puts n1 + n2 