n, s = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

puts x.map { |i| (i - s).abs }.inject(:gcd)