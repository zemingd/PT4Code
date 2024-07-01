n, m = gets.split.map(&:to_i)
roads = m.times.flat_map { gets.split.map(&:to_i) }
1.upto(n) do |i|
  puts roads.count(i)
end