n, m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort
distances = []
(0...(m - 1)).each do |i|
  distances << arr[i + 1] - arr[i]
end
distances = distances.sort.reverse
result = (arr.last - arr.first).abs
(0...([n - 1, distances.count].min)).each do |i|
  result -= distances[i]
end
puts result