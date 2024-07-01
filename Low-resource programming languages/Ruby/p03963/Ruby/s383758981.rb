n, k = gets().split(' ').map{|x| x.to_i()}
puts(k * (k - 1) ** (n - 1))