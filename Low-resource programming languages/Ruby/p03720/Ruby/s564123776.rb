N, M = gets.split.map(&:to_i)
roads = []
M.times do
  roads << gets.split.map(&:to_i).sort
end
results = Array.new(N, 0)
roads.each do |road|
  results[road[0] - 1] += 1
  results[road[1] - 1] += 1
end
results.each do |result|
  puts result
end