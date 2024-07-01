N, M = gets.split.map(&:to_i)
as = Array.new(M,Array.new(2,0))
ans = Array.new(M)
M.times do |i|
  as[i] = gets.split.map(&:to_i)
end

#$par[i]=iならば根
$par = (0..(N-1)).to_a
#ユニオンのサイズを保持する。初期値は1
$size = Array.new(N,1)
#ここからUnion-find#
#根を求める
def get_root(x)
  if $par[x] == x then
    return x
  else
    #経路圧縮, できるだけ根につなぐ
    get_root($par[x])
    #return $par[x]
  end
end

#xとyが同じ集合に属するか否か
def is_same?(x, y)
  get_root(x)==get_root(y)
end

#xとyの属する集合を併合
def unite(x,y)
  x = get_root(x)
  y = get_root(y)

  if !(x==y) then
    x,y = y,x if $size[x]>$size[y]
    #yが新たな親になる
    $par[x]=y
    #サイズを更新
    $size[y] += $size[x]
    $size[x] = 0
  end
end
#ここまでUnion-find#

#エントリーポイント#
#入力の後ろから繋ぎたいので、入力を逆順にする
as = as.reverse
#一つずつ繋ぎつつ答えをansに格納
M.times do |i|
  #NC2 -ΣsC2してansに格納
  ans[M-1-i] = N*(N-1)/2
  $size.each do |s|
    ans[M-1-i] -= s*(s-1)/2
  end
  #つなぐ
  unite(as[i][0]-1,as[i][1]-1)
end

puts ans
