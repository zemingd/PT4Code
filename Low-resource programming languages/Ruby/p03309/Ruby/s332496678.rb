N = gets.to_i
As = gets.split.map(&:to_i)

xs = As.map.with_index(1){|a, i| a - i}
b = N.even? ? (xs[N/2 - 1, 2].inject(:+) / 2.0).round : xs[N/2]
puts xs.inject(0){|s, x| s + (x - b).abs}