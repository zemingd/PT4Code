m = 1000000007
n = gets.to_i
a = gets.split.map { |x| x.to_i % m }

puts a.combination(2).inject(0) { |sum, (x, y)| (sum + (x ^ y)) % m }
