a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
nums = [a, b, c, d, e]
min = nums.map { |n| n % 10}.reject { |n| n == 0 }.min

puts (nums.map { |n| Rational(n, 10).ceil }).inject(:+) * 10 - 10 + min