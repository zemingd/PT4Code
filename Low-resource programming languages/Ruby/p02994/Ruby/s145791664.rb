n, l = gets.chomp.split.map(&:to_i)

vals = (1..n).map { |i| l + i - 1 }

puts vals.reduce(:+) + vals.map { |v| v.abs }.min
