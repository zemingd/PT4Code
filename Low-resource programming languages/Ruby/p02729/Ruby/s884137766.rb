n,m = gets.chomp.split(' ').map(&:to_i)
puts ((m + n)*(m + n - 1) - m * (m - 1)) / 2