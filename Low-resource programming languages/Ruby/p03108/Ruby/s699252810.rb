#N, Mを受け取る
N, M = gets.split.map(&:to_i)

#Ai, Biを受け取る
as = Array.new(M).map! do |v|
  v = gets.split.map(&:to_i)
end

#nodeをクラス化
#parent -> 親ノードの番号
#size -> 自分が根なら集合のサイズ, 子なら0
class Node
  attr_accessor :parent, :size
  def initialize(n)
    @parent = n
    @size = 1
  end
end

#ここからUnion-find#
class Union_find
  #コンストラクタ
  def initialize(n)
    @node = Array.new(n).map!.with_index do |v, i|
      v = Node.new(i)
    end
  end
  
  #x番目の島の根を返す
  def find(x)
    return x if @node[x].parent == x
    
    #一度見たノードは根に繋ぐ, 経路圧縮
    @node[x].parent = find(@node[x].parent)
  end
  
  #ノードxとノードyが同じ集合に属するか？
  def is_same?(x, y)
    return find(x)==find(y)
  end
  
  #ノードxとノードyを併合
  #併合による不便さの変化deltaを返す
  def unite(x,y)
    delta = 0
	x = find(x)
    y = find(y)
    
    if !is_same?(x,y) then
      #deltaを更新
  	  delta = @node[x].size * @node[y].size
      
      #xの方が大きければswap(x, y), 経路平坦化
      x,y = y,x if @node[x].size > @node[y].size
      
      #yが新しい親になる
      @node[x].parent = y
      @node[y].size += @node[x].size
      @node[x].size = 0
    end
    return delta
  end
end

#エントリーポイント#
#入力の後ろから繋ぎたいので、入力を逆順にする
as = as.reverse

#Union_findをnew
uni = Union_find.new(N)

#ansを初期化
ans = Array.new(N,0)
ans[M-1] = N*(N-1)/2

#一つずつ繋ぎつつ答えをansに格納
(M-1).times do |i|
  #つないで答えをもらってくる
  ans[M-2-i] = ans[M-1-i] - uni.unite(as[i][0]-1,as[i][1]-1)
end
 
puts ans