H, W = gets.split.map(&:to_i)
a = Array.new(W).map{Array.new(H)}
for i in 0..(H-1)
  a[i] = gets.chomp.split("")
end
blkN = whtN = 0
blk_i = []
blk_j = []
wht_i = []
wht_j = []
for i in 0..(H-1)
  for j in 0..(W-1)
    if a[i][j] == "."
      whtN += 1
      wht_i.push(i)
      wht_j.push(j)
    elsif a[i][j] == "#"
      blkN += 1
      blk_i.push(i)
      blk_j.push(j)
    end
  end
end
max = 0
for i in 0..(whtN - 1)
  mind = 10000
  for j in 0..(blkN - 1)
    d = (wht_i[i] - blk_i[j]).abs + (wht_j[i] - blk_j[j]).abs
    mind = d if mind > d
  end
  max = mind if max < mind
end
puts max