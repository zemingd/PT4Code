n, k = gets.split.map(&:to_i)
h = n.times.map { gets.to_i }
h.sort!
min_diff = h[-1] - h[0]
for i in 0...(n - k + 1) do
  diff = h[i + k - 1] - h[i]
  min_diff = [min_diff, diff].min
end
puts min_diff
