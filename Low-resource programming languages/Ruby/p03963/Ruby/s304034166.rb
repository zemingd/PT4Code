n, k = gets.chomp.split(' ').map(&:to_i)
ret = k * ((k - 1) ** (n - 1))
puts ret
