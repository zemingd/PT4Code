n = gets.strip.to_i
bars = gets.strip.split(' ').map(&:to_i)
index_bars = bars.dup

max_count = 0

index_bars.size.times do
  max_index = index_bars.index(index_bars.max)
  if max_index + 1 == n
    break
  end

  index_bars[max_index] = 0

  count = 0
  (max_index...n - 1).each do |i|
    if bars[i + 1] <= bars[i]
      # p "#{bars[i + 1]} <= #{bars[i]}"
      count += 1
    else
      break
    end
  end

  max_count = count if count > max_count
end

puts max_count
