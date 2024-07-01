n = gets.to_i
w = gets.chomp.split.map(&:to_i)
(1..n - 1).each do |i|
  w[i] += w[i - 1]
end
res = 10000
(0..n - 2).each do |i|
  res = [res, (w[i] - (w[n - 1] - w[i])).abs].min
end
puts res