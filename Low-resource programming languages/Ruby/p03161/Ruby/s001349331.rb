# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
scaffs = gets.split.map(&:to_i)

costs = Array.new(n, Float::INFINITY)
costs[0] = 0

(0...n - 1).each do |i|
  (i+1..[i + k, n - 1].min).each do |j|
    cost = costs[i] + (scaffs[i] - scaffs[j]).abs
    costs[j] = [costs[j], cost].min
  end
end

puts costs.last
