N = gets.to_i
heights = gets.split.map(&:to_i)
costs = Array.new(N) { nil }
costs[0] = 0
N.times do |i|
  cost = costs[i]
  (1..2).each do |j|
    next if i+j >= N
    costs[i+j] = [costs[i+j], costs[i] + (heights[i+j] - heights[i]).abs].compact.min
  end
end
puts costs.last