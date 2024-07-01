n = gets.to_i
a = gets.split.map(&:to_i)
x = [0]
n.times do |i|
  x[i + 1] = x[i] + a[i] 
end
min = Float::INFINITY
1.upto(n.pred) do |i|
  min = (x[-1] - 2 * x[i]).abs if min > (x[-1] - 2 * x[i]).abs
end
puts min