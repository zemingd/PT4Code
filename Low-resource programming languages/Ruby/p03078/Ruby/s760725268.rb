x, y, z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse
bs = gets.split.map(&:to_i).sort.reverse
cs = gets.split.map(&:to_i).sort.reverse

ss = []
for ai in 0...as.length
  for bi in 0...bs.length
    break if k < (ai+1)*(bi*1)
    for ci in 0...cs.length
      break if k < (ai+1)*(bi+1)*(ci+1)
      ss << as[ai]+bs[bi]+cs[ci]
    end
  end
end
puts ss.sort.reverse[0...k]