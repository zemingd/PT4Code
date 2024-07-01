A, B = gets.split.map(&:to_i)

PAMin = (A / 0.08).ceil
PAMax = ((A+1) / 0.08).ceil

PBMin = (B / 0.10).ceil
PBMax = ((B+1) / 0.10).ceil

ans = -1
if PBMin <= PAMax
  ans = [PAMin, PBMin].max
end


puts ans
