n = gets.to_i
a = gets.split.map(&:to_i)
x = 0
sum = a.inject(:+)
min = 1_000_000_000_000_000
0.upto(n - 2) do |i|
  x += a[i]
  min = (sum - 2 * x).abs if min > (sum - 2 * x).abs
end
puts min