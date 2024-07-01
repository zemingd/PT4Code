n, m = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
roads = []
count = 0
m.times do
  roads << gets.split.map(&:to_i)
end

towers = {}

roads.each do |road|
  if towers[road[0]]
    towers[road[0]] << road[1]
  else
    towers[road[0]] = [road[1]]
  end

  if towers[road[1]]
    towers[road[1]] << road[0]
  else
    towers[road[1]] = [road[0]]
  end
end

heights.size.times do |i|
  tower_height = heights[i]
  if towers[i+1]
    if towers[i+1].size == 0 || (towers[i+1]).all?{|v| v < tower_height}
      count += 1
    end
  end
end

puts count