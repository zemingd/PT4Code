n = gets.to_i
a = gets.split.map(&:to_i)

sum = a.reduce(&:+)
snuke_sum = a[0]
min_diff = (sum - 2 * snuke_sum).abs
1.upto(n-2) do |i|
  snuke_sum += a[i]
  min_diff = [min_diff, (sum - 2 * snuke_sum).abs].min
end

puts min_diff