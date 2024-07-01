n, m = gets.split.map &:to_i
as = gets.split.map { |s| s.to_i >> 1 }

l = as.inject { |a, b| a.lcm b }

p (m / l + 1) / 2
