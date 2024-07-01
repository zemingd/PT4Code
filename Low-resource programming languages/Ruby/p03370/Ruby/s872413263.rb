N, X = gets.chomp.split.map(&:to_i)
ms = Array.new(N) { gets.chomp.to_i }

puts N + (X - ms.sum) / ms.min