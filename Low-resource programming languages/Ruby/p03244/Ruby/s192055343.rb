N = gets.to_i
V = gets.split.map(&:to_i)

counts = Array.new(2) { Hash.new(0) }
V.each_with_index do |v, idx|
  counts[idx % 2][v] += 1
end

sorted1 = counts[0].sort
sorted2 = counts[1].sort

ans = N / 2 - sorted1[-1][1]
if sorted1[-1][0] == sorted2[-1][0]
  ans += N / 2 - (sorted2[-2] ? sorted2[-2][1] : 0)
else
  ans += N / 2 - sorted2[-1][1]
end

puts ans
