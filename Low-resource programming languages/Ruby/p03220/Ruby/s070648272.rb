n, t, a, *h = $stdin.read.split.map(&:to_i)
arr = h.map { |i| (t - 0.006 * i - a).abs }
puts arr.index(arr.min) + 1
