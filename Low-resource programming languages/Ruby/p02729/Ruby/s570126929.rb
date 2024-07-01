n, m = gets.split(' ').map(&:to_i)

a = n > 0 ? (n * (n - 1)) / 2 : 0
b = m > 0 ? (m * (m - 1)) / 2 : m
p (a + b)