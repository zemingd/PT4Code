n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i).sort!

dists = 0.upto(m - 2).with_object(Array.new(m - 1, 0)) do |i, a|
  a[i] = xs[i + 1] - xs[i]
end

puts xs.last - xs.first - dists.max(n - 1).inject(:+)
