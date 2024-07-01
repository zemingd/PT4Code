n, k = gets.split.map(&:to_i)
heights = []
minimum = 100000000000000000000000000000
n.times do
  heights << gets.to_i
end

heights = heights.sort

(0..heights.size - k).each do |i|
  selected_trees = heights[i..i+k-1]
  diff = selected_trees.max - selected_trees.min
  if minimum > diff
    minimum = diff
  end
end

puts minimum