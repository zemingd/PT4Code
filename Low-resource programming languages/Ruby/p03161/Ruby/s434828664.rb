N, K = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

cost = []

K.times do |i|
  cost << (H[0] - H[i]).abs
end

K.upto(N - 1) do |i|
  cost << (1..K).map {|j| cost[i - j] + (H[i - j] - H[i]).abs }.min
end

print cost[-1]
