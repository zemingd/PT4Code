N,Q=gets.chomp.split(" ").map(&:to_i)
els=[]
qls=[]
for i in 1..N-1 do
  els.push(gets.chomp.split(" ").map(&:to_i))
end
els=(els.sort).reverse
for i in 1..Q do
 qls.push(gets.chomp.split(" ").map(&:to_i))
end
##依存関係をチェックする
#2重リストの宣言
lst=Array.new(N).map{Array.new(N,0)}
#対角成分を埋める
for i in 0..N-1 do
  lst[i][i]=1
end
for i in 0..N-2 do
  ##まず辺を行列に記入
  a=els[i][0]-1
  b=els[i][1]-1
  lst[a][b]=1
  ##bから伸びているところ（cとする）すべてについて、a-cをつなぐ
  for j in b+1..N-1 do
    lst[a][j]+=lst[b][j]
  end
end
####木に数字を追加
sumls=Array.new(N,0)
for i in 0..Q-1 do
  a=qls[i][0]-1
  m=qls[i][1]
  for j in a..N-1 do
    sumls[j]=sumls[j]+lst[a][j]*m
  end
end

puts sumls.join(' ')
