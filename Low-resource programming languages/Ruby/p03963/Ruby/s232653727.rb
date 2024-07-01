n, k = gets.chomp.split.map(&:to_i)
puts k * (k - 1) ** (n - 1)
