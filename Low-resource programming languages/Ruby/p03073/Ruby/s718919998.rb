tile = get.split.map(&:to_i)
cnt0 = 0
cnt1 = 0

tile.size.times do |i|
  if tile[i] == 0
    if i % 2 == 0
      cnt1 += 1
    else
      cnt0 += 1
    end
  else #tile[i] == 1
    if i % 2 == 0
      cnt0 += 1
    else
      cnt1 += 1
    end
  end
end

puts [cnt0, cnt1].min
