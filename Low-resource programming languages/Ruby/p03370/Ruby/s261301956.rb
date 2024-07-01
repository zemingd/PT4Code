n, x = gets.split.map(&:to_i)
ms = n.times.map { gets.to_i }
puts n + (x - ms.inject(:+)) / ms.min