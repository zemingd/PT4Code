N, K = gets.split.map(&:to_i)
S = gets.chomp
g = 0
a = S.chars.chunk(&:itself).map{|e, f| [e.to_i, g += f.size]}
a = [[1, 0]] + a if a[0][0] == 0
z = a.size - 1
res = [a[[2*K, z].min][1]]
l, r = 1, 2*(K + 1)
while r <= z
  res << a[r][1] - a[l][1]
  l += 2; r += 2
end
puts res.max