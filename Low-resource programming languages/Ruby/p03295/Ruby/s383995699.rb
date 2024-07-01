n, m = gets.chomp.split.map(&:to_i)
demands = m.times.map do
  gets.chomp.split.map(&:to_i)
end

min_ranges = demands.group_by(&:first).map do |k, v|
  v.min_by(&:last)
end

cnt = 0
# min_rangesの[0]は単調増加なので、[1]の大小のみに注目する。
min, max = min_ranges[0]
(min_ranges.size - 1).times do |i|
  min = min_ranges[i + 1][0]
  if max >= min_ranges[i + 1][1]
    max = max
  elsif min_ranges[i + 1][0] < max && max <= min_ranges[i + 1][1]
    max = max
  else
     max = min_ranges[i + 1][1]
     cnt += 1
  end
end

puts(cnt + 1)