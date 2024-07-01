N, *VS = $stdin.read.split.map(&:to_i)
occ = [{}, {}]
for i in 0...(N/2)
  occ[0][VS[i*2  ]] = (occ[0][VS[i*2  ]] || 0) + 1
  occ[1][VS[i*2+1]] = (occ[1][VS[i*2+1]] || 0) + 1
end
ranking = [
  occ[0].sort_by(&:last),
  occ[1].sort_by(&:last),
]
def ans(na, nb); p (N/2 - na) + (N/2 - nb); end
a1, na1 = *ranking[0][0]
b1, nb1 = *ranking[1][0]
a2, na2 = *ranking[0][1]
b2, nb2 = *ranking[1][1]
if a1 != b1
  ans(na1, nb1)
else
  if na1 < nb1
    ans(na2, nb1)
  elsif na1 > nb1
    ans(na1, nb2)
  else # 1位が同数
    if na2.nil?  # 全部同じ数
      p N/2
    else
      ans(na1, [na2, nb2].max)
    end
  end
end
