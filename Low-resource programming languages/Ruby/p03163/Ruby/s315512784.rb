N, W = gets.split.map(&:to_i)
(0..(N-1)).each do
  w, v = gets.split.map(&:to_i)
  next if w > W
  
  (0..(d.size - 1)).each do |i|
    d << [d[i][0] + w, d[i][1] + v] if d[i][0] + w <= W
  end
  d.sort!
  
  idx = 1
  while idx < d.size do
    if d[idx-1][1] >= d[idx][1]
      d.delete_at(idx)
    else
      idx += 1
    end
  end
end

puts d[-1][1]