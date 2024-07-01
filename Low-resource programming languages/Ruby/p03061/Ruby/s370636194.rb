
class SegmentTree
    def initialize(n)
      @size=n
      @realsize=1
      while @realsize<@size do
        @realsize*=2
      end
      # default
      @tree=Array.new(2*@realsize,0)
    end
  
    def change(i,x)
      i+=@realsize
      @tree[i]=x
      while i>1 do
        parent=i/2
        brother=i^1
        # update rule
        @tree[parent]=@tree[i].gcd(@tree[brother])
        i=parent
      end
    end
  
    def get_gcd(a,b)
      return _get_gcd(a,b,1,0,@realsize)
    end
  
    def _get_gcd(a,b,k,l,r) # [a,b)
      return 0 if r<=a || b<=l
      return @tree[k] if a<=l && r<=b
      vl=_get_gcd(a,b,2*k,l,(l+r)/2)
      vr=_get_gcd(a,b,2*k+1,(l+r)/2,r)
      return vl.gcd(vr)
    end
end

N=gets.to_i
A=gets.split.map(&:to_i)
st=SegmentTree.new(N)
A.each_with_index do |a,i|
    st.change(i,a)
end
max=0
N.times do |i|
    st.change(i,0)
    g=st.get_gcd(0,N)
    max=g if max<g
    st.change(i,A[i])
end
puts max
