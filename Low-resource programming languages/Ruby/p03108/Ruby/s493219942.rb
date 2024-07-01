#入力とか変数宣言とか
N, M = gets.split.map(&:to_i)
as = Array.new(M,Array.new(2,0))
ans = Array.new(M,0)
M.times do |i|
  as[i] = gets.split.map(&:to_i)
end
 
#木, $par[i]=iならば根
$par = (0..(N-1)).to_a
 
#ユニオンのサイズを保持する。初期値は1
$size = Array.new(N,1)
 
#ここからUnion-find#
#根を求める関数
def get_root(x)
  if $par[x] == x then
    return x
  else
    #経路圧縮, 根にたどり着くまで再帰
    $par[x] = get_root($par[x])
    return $par[x]
  end
end
 
#xとyが同じ集合に属するか否か
def is_same?(x, y)
  get_root(x)==get_root(y)
end
 
#xとyの属する集合を併合して、不便さの変化deltaを返す
def unite(x,y)
  delta = 0
  x = get_root(x)
  y = get_root(y)
 
  if !(x==y) then
    delta = $size[y]*$size[x]
    x,y = y,x if $size[x]>$size[y]
    #yが新たな親になる
    $par[x]=y
    #サイズを更新
    $size[y] += $size[x]
    $size[x] = 0
  end
  return delta
end
#ここまでUnion-find#
 
#エントリーポイント#
#入力の後ろから繋ぎたいので、入力を逆順にする
as = as.reverse
  
#数列ans[i]の最終項はN*(N-1)/2
ans[M-1] = N*(N-1)/2
  
#一つずつ繋ぎつつ答えをansに格納
(M-1).times do |i|
  #つないで答えをもらってくる
  ans[M-2-i] = ans[M-1-i] - unite(as[i][0]-1,as[i][1]-1)
end
 
puts ans