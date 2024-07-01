n,m = gets.chomp.split(' ').map(&:to_i)
puts ((m + n)*(m + n - 1) - n * (n - 1)) / 2