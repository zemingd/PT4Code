N = gets.to_i
heights = gets.split.map(&:to_i)
costs = Array.new(N) { nil }
N.times do |i|
  if i == 0
    costs[i] = 0
  elsif i == 1
    costs[i] = (heights[i] - heights[i-1]).abs
  else
    costs[i] = [(heights[i] - heights[i-1]).abs + costs[i-1],
                (heights[i] - heights[i-2]).abs + costs[i-2]].min
  end
end
puts costs.last
