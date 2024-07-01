IND = -1  # 独立

# n:島の数
# m:橋の数
n, m = gets.chomp.split(' ').map(&:to_i)

abs = Array.new(m, nil)
uf = Array.new(n+1, IND)
count = Array.new(n+1, 1)
results = Array.new

for i in 1..m do
  a, b = gets.chomp.split(' ').map(&:to_i)
  abs[i-1] = [a,b]
end

abs.reverse!

def root(array, pos)
  return pos if pos == IND
  while array[pos] != pos do
    pos = array[pos]
    return pos if pos == IND
  end
  pos
end

for (l,r) in abs do

  islands = []
  for i in 1..n do
    if uf[i] == i or uf[i] == IND then # 根
      islands.push(count[i])
    end
  end
  sum = 0
  for i in 0..islands.length-1 do
    for j in i+1..islands.length-1 do
      sum += islands[i] * islands[j]
    end
  end
  results.push(sum)

  # 独立のノードを根にする
  if uf[l] == IND then
    uf[l] = l
  end
  if  uf[r] == IND then
    uf[r] = r
  end

  # 左右の根を求める
  l = root(uf, l)
  r = root(uf, r)

  if l != r then
    # 左の根を右の根につなげる
    uf[l] = r
    count[r] += count[l] # 島群のサイズ
  end
end

for i in results.reverse do
  print "#{i}\n"
end
