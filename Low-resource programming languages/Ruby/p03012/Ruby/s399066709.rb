n = gets.to_i
line =gets.split(' ').map(&:to_i)

kotae = 100
for t in 0..n-1
  ss = 0
  so = 0
  for j in 0..t do
   ss += line[j]
  end
  so = line.inject(:+)-ss
  sa = (ss-so).abs
  if sa<= kotae
    kotae = sa
  end
end
puts kotae
