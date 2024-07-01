IND = -1  # 独立

# n:島の数
# m:橋の数
n, m = gets.chomp.split(' ').map(&:to_i)

abs = Array.new(m, nil)
uf = Array.new(n+1, IND)
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

  sum = 0
  for i in 1..n do
    for j in i+1..n do
      
      i_root = i
      while (i_root != IND) and (uf[i_root] != i_root) do
        i_root = uf[i_root]
      end
      j_root = j
      while (j_root != IND) and (uf[j_root] != j_root) do
        j_root = uf[j_root]
      end

      sum += 1 if (i_root != j_root) or i_root == IND or j_root == IND
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

  # 左の根を右の根につなげる
  uf[l] = r
end

for i in results.reverse do
  print "#{i}\n"
end
