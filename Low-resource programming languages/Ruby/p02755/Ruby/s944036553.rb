A, B = gets.split.map(&:to_i)

PAMin = (A / 0.08).ceil
PAMax = ((A+1) / 0.08).floor

PBMin = (B / 0.10).ceil
PBMax = ((B+1) / 0.10).floor

if PAMax < PBMin or PBMax < PAMin
  ans = -1
elsif PBMin <= PAMax
  ans = [PAMin, PBMin].max
  if ans > PAMax or ans > PBMax
    ans = -1
  end
end


puts ans
