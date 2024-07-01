n, m = gets.split.map(&:to_i)
k = []
s = []
for i in 1..m do
  s[i] = gets.split.map(&:to_i)
  k[i] = s[i][0]
end
p = gets.split.map(&:to_i)
p.unshift(nil)

pow2 = [1]
(1..n).each { |p|
  pow2[p] = pow2[p-1] * 2
}
sw = []
res = 0
for x in 0...pow2[n] do
  for j in 1..n do
    sw[j] = (x >> (j-1)) & 1
  end
  flag = true
  for i in 1..m do
    sum = 0
    for kk in 1..k[i] do
      sum += sw[s[i][kk]]
    end
    if sum % 2 != p[i]
      flag = false
      break
    end
  end
  res += 1 if flag
end
puts res
