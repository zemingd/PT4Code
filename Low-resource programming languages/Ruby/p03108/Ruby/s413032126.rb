class UF
  def initialize(n)
    @root=(0..n).to_a   #@root[i]==i でiはroot
    @root_cnt=Array.new(n+1,1)
    @root[0]=nil
    @root_cnt=Hash.new{|h,k|h[k]=1}
    @comb=nc2(n)
  end
  def union(a,b)
    unite(find(a),find(b))
  end
  def find(a)
    @root[a]==a ? a : @root[a]=find(@root[a])
  end
  def unite(r1,r2)
    return if r1==r2
    r1,r2=r2,r1 if r2<r1
    @root[r2]=r1
    @root_cnt[r1]+=@root_cnt[r2]
    @root_cnt.delete(r2)
  end
  def nc2(n)
    n*(n-1)/2
  end
  def d_cnt
    @comb-@root_cnt.values.map{|n|nc2(n)}.inject(0){|s,i|s+i}
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
