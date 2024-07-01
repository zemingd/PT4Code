n, l = gets.split(" ").map(&:to_i)
taste = []
for i in 1..n
  t = l + i - 1
  taste << t
end
full_apple_pie = taste.inject(:+)
apple_pies = taste.combination(n-1).to_a
abses = []
apple_pies.each_with_index do |pie, i|
  abs = (full_apple_pie - pie.inject(:+)).abs
  abses << abs
end
index = abses.index(abses.min)
puts apple_pies[index].inject(:+)