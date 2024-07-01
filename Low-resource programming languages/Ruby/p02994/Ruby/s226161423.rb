n, l = gets.split(" ").map(&:to_i)
taste = []
for i in 1..n
  t = l + i - 1
  taste << t
end
full_apple_pie = taste.sum
apple_pies = taste.combination(n-1).to_a
abses = []
apple_pies.each_with_index do |pie, i|
  abs = (full_apple_pie - pie.sum).abs
  abses << abs
end
index = abses.index(abses.min)
puts apple_pies[index].sum