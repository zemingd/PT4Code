A, B = gets.split.map(&:to_i)

PAMin = (A / 0.08).ceil
PAMax = ((A+1) / 0.08).ceil

PBMin = (B / 0.10).ceil
PBMax = ((B+1) / 0.10).ceil

if PAMax < PBMin or PBMax < PAMin
  ans = -1
elsif PBMin <= PAMax
  ans = [PAMin, PBMin].max
end

puts ans
