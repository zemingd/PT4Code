n = gets.to_i
a = gets.split.map(&:to_i)
x = a.shift
sum = a.inject(:+)
min = (sum - x).abs
1.upto(n - 2) do |i|
  x += a[i]
  min = (sum - x).abs if min > (sum - x).abs
end
puts min