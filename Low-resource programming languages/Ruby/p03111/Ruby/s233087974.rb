n,a,b,c=gets.split.map(&:to_i)
l = n.times.map {gets.to_i}
m = 1/0.0
[0,1,2,3].repeated_permutation(n) do |bi|
  ca, cb, cc = 0, 0, 0
  la, lb, lc = 0, 0, 0
  n.times do |i|
    if bi[i] == 1
      ca += 1
      la += l[i]
    elsif bi[i] == 2
      cb += 1
      lb += l[i]
    elsif bi[i] == 3
      cc += 1
      lc += l[i]
    end
  end
  next if ca * cb * cc == 0
  s = (la - a).abs + (ca - 1) * 10 + (lb - b).abs + (cb - 1) * 10 + (lc - c).abs + (cc - 1) * 10
  m = s if s < m
end
p m