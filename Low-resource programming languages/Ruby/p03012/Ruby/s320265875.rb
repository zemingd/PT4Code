gets
ws = gets.split.map(&:to_i)

total = ws.reduce(:+)
cum_sums = ws.reduce([0]) { |a, n| a << a.last.to_i + n }
# sum - (total - sum)
p cum_sums.map { |sum| (sum * 2 - total).abs }.min
