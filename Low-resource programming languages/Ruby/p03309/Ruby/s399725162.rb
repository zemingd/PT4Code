n = gets.to_i
as = gets.split.map(&:to_i).map.with_index { |x, i| x - i - 1 }
med = as[n/2]
ave = as.inject(:+).fdiv(n)
ave = med if (ave - med).abs < 1
ave = ave.round
p as.map { |x| (x - ave).abs }.inject(:+)