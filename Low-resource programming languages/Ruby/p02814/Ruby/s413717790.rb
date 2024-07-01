n, m = gets.split.map(&:to_i)
a = gets.split.inject(1) { |x, s| x.lcm(s.to_i >> 1) }

puts a.even? ? 0 : ((m - 1) / a / 2) + 1
