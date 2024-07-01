n, k = gets.chomp.split(' ').map { |e| e.to_i }

puts k * (k - 1) ** (n - 1)