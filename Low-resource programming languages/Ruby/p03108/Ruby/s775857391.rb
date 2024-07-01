n, m = gets.chomp.split(' ').map(&:to_i)

bridges  = Array.new(m, nil)
uf       = Array.new(n+1){|index| index}
uf_sizes = Array.new(n+1, 1)
results  = Array.new

for i in 1..m do
  a, b = gets.chomp.split(' ').map(&:to_i)
  bridges[i-1] = [a,b]
end

bridges.reverse!

def root(array, pos)
  routes = []
  while array[pos] != pos do
    routes.push(pos) # 経路記録
    pos = array[pos]
  end
  for r in routes do
    array[r] = pos
  end
  pos
end

islands = n*(n-1)/2

for (l,r) in bridges do

  results.push(islands)

  # 左右の根を求める
  l = root(uf, l)
  r = root(uf, r)

  # 根が異なっていれば
  if l != r then

    # 「不便さ」減少
    islands -= (uf_sizes[l]*uf_sizes[r])

    # 左の根を右の根につなげる
    uf[l] = r
    uf_sizes[r] += uf_sizes[l] # 島群のサイズ
    uf_sizes[l] = 0
  end
end

for i in results.reverse do
  print "#{i}\n"
end
