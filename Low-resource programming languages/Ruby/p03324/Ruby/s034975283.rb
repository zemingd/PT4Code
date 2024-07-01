d, n = gets.chomp.split(" ").map(&:to_i)

puts (100 ** d) * (n - (n - 1) / 99)