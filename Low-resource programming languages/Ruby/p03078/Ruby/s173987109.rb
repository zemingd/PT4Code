x, y, z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse
bs = gets.split.map(&:to_i).sort.reverse
cs = gets.split.map(&:to_i).sort.reverse

added = Array.new(x){Array.new(y){Array.new(z)}}
anss = [as[0]+bs[0]+cs[0]]
added[0][0][0] = true
cands = [[as[1]+bs[0]+cs[0],1,0,0],
         [as[0]+bs[1]+cs[0],0,1,0],
         [as[0]+bs[0]+cs[1],0,0,1]]
(k-1).times do
  max,i = cands.map.with_index.max{|vi1,vi2| vi1[0][0] <=> vi2[0][0]}
  v = max[0]; ai = max[1]; bi = max[2]; ci = max[3]
  anss << v
  cands.delete_at(i)
  if ai+1 < x and not added[ai+1][bi][ci]
    cands << [as[ai+1]+bs[bi]+cs[ci],ai+1,bi,ci]
    added[ai+1][bi][ci] = true
  end
  if bi+1 < y and not added[ai][bi+1][ci]
    cands << [as[ai]+bs[bi+1]+cs[ci],ai,bi+1,ci]
    added[ai][bi+1][ci] = true
  end
  if ci+1 < z and not added[ai][bi][ci+1]
    cands << [as[ai]+bs[bi]+cs[ci+1],ai,bi,ci+1]
    added[ai][bi][ci+1] = true
  end
end

puts anss