def solve(n, k, heights)
  (0 .. n - k).map { |i|
    heights[i+k-1] - heights[i]
  }.min
end

n, k = gets.split.map(&:to_i)
heights = n.times.map { gets.to_i }

p solve(n, k, heights.sort)
