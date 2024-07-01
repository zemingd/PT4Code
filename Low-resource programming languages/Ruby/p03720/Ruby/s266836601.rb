n, m = gets.split.map(&:to_i)
roads = m.times.map { gets.split.map(&:to_i) }.flatten
(1..n).each { |i| puts roads.count(i) }