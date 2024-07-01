N = gets.to_i
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)
Cs = gets.split.map(&:to_i)

ans = N.times.map { |i| Bs[As[i] - 1] }.reduce(&:+)
ans += (N - 1).times
  .select { |i| As[i + 1] - As[i] == 1 }
  .map { |i| Cs[As[i] - 1] }
  .reduce(&:+) || 0

puts ans
