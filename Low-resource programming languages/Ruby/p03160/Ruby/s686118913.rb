n = gets.to_i
h = gets.split.map(&:to_i)
a = Array.new(n + 1, 1000)
a[0] = 0
h.unshift(h[0])
0.upto(n - 1) do |i|
  a[i + 1] = [a[i + 1], (h[i] - h[i + 1]).abs + a[i]].min
  a[i + 2] = [a[i + 2], (h[i] - h[i + 2]).abs + a[i]].min if i < n - 1
end
puts a[n]