# frozen_string_literal: true

n = gets.to_i
scaffs = gets.split.map(&:to_i)

costs = Array.new(n, Float::INFINITY)
costs[0] = 0

(0...n - 1).each do |i|
  cost1 = costs[i] + (scaffs[i] - scaffs[i + 1]).abs
  costs[i + 1] = [costs[i + 1], cost1].min

  if i + 2 < n
    cost2 = costs[i] + (scaffs[i] - scaffs[i + 2]).abs
    costs[i + 2] = [costs[i + 2], cost2].min
  end
end

puts costs.last
