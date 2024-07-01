class UF
attr_reader :cnt
def initialize(n)
    @root=Array.new(n+1)   #@root[i]==nil でiはroot
    @root[0]=nil
    @root_cnt=Hash.new{|h,k|h[k]=1}
    @cnt=nc2(n)
  end
  def union(a,b)
    unite(find(a),find(b))
  end
  def find(a)
    @root[a]==nil ? a : @root[a]=find(@root[a])
  end
  def unite(r1,r2)
    return 0 if r1==r2
    r1,r2=r2,r1 if r2<r1
    @cnt-=@root_cnt[r1]*@root_cnt[r2]
    @root[r2]=r1
    @root_cnt[r1]+=@root_cnt[r2]
    @root_cnt.delete(r2)
  end
  def nc2(n)
    n*(n-1)/2
  end
end
io = STDIN
n,m=io.gets.split.map(&:to_i)
uf=UF.new(n)
ab=m.times.map{io.gets.split.map(&:to_i)}
ar=ab.reverse_each.map do |a,b|
  cnt=uf.cnt
  uf.union(a,b)
  cnt
end
puts ar.reverse