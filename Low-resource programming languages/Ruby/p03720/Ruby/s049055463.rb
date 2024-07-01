n, m = gets.split.map(&:to_i)
roads_count = Array.new(n, 0)
for i in 0...m do
  a, b = gets.split.map(&:to_i)
  roads_count[a - 1] += 1
  roads_count[b - 1] += 1
end
for j in 0...n do
  puts roads_count[j]
end
