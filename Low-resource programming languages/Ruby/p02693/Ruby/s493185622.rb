k = gets.to_i
a, b = gets.split.map(&:to_i)

puts a % k == 0 || a + k - a % k <= b ? "OK" : "NG"