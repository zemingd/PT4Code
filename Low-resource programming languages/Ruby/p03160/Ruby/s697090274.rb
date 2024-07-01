N = gets.to_i
H = gets.chomp.split.map(&:to_i)

cost = []

cost << 0
cost << (H[0] - H[1]).abs

2.upto(N - 1) do |i|
  c1 = cost[i - 2] + (H[i - 2] - H[i]).abs
  c2 = cost[i - 1] + (H[i - 1] - H[i]).abs
  cost << [c1, c2].min
end

print cost[-1]
