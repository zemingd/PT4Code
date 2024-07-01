d, n = gets.chomp.split(" ").map(&:to_i)
puts (n + n / 100) * (100 ** d)