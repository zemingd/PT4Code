class UF  #Union Find
  def initialize(n)
    @root=(0..n).to_a   #@root[i]==i でiはroot
    @root_cnt=Array.new(n+1,1)
    @root[0]=nil
    @root_cnt[0]=0
    @comb=nc2(n)
  end
  def union(a,b)
    # p [[a,b],@root,@root_cnt,d_cnt]
    unite(find(a),find(b))
  end
  def find(a)
    @root[a]==a ? a : find(@root[a])
  end
  def unite(r1,r2)
    return if find(r1)==find(r2)
    r1,r2=r2,r1 if r2<r1
    @root[r2]=r1
    @root_cnt[r1]+=@root_cnt[r2]
    @root_cnt[r2]=0
  end
  def nc2(n)
    n*(n-1)/2
  end
  def d_cnt
    @comb-@root_cnt.select{|a|a>1}.inject(0){|s,a|nc2(a)+s}
  end
end
io = STDIN
n,m=io.gets.split.map(&:to_i)
uf=UF.new(n)
ab=m.times.map{io.gets.split.map(&:to_i)}
ar=ab.reverse_each.map do |a,b|
  dcnt=uf.d_cnt
  uf.union(a,b)
  dcnt
end
puts ar.reverse
