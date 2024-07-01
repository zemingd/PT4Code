N, X = gets.strip.split.map(&:to_i)
xs = gets.strip.split.map(&:to_i)

xs << X
xs.sort!

ds = [0]
(xs.size - 1).times { |i| ds << xs[i + 1] - xs[i] }

puts ds.inject(:gcd)
