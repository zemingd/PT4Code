n, d = gets.split.map(&:to_i)
x = []
for i in 0...n do
  x[i] = gets.split.map(&:to_i)
end
count = 0
for i in 0...(n-1) do
  for j in (i+1)...n do
    dist2 = 0
    for dim in 0...d do
      diff = x[i][dim] - x[j][dim]
      dist2 += diff * diff
    end
    dist = Math.sqrt(dist2).to_i
    count += 1 if dist * dist == dist2
  end
end
puts count
