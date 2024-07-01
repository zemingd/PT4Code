n = gets.to_i
as = gets.split.map(&:to_i).map.with_index { |x, i| x - i - 1 }.sort
med = n.odd? ? as[n/2] : (as[n/2-1] + as[n/2]) / 2
p as.map { |a| (a-med).abs }.inject(:+)