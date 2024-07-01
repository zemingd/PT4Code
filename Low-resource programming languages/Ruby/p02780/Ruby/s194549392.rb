n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
a = [0] * (n + 1)
p.each_with_index do |x, i|
  a[i + 1] = a[i] + x
end
max = 0
(n - k + 1).times do |i|
  max = a[i + k] - a[i] if max < a[i + k] - a[i]
end
puts (max + k) / 2.0