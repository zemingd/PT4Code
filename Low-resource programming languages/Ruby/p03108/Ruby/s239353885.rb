
class UnionFind
    @p_s = []
    
    def initialize n
        @p_s = [-1]*n
    end
    
    def root a
        return a if @p_s[a] < 0
        @p_s[a] = root(@p_s[a])
    end
    
    def size a
        return -@p_s[root a]
    end
    
    def connect a, b
        ac = root a
        bc = root b
        return false if ac == bc
        x,y = y,x if ac<bc
        @p_s[ac] += @p_s[bc]
        @p_s[bc] = ac
    end
end

n, m = gets.split.map(&:to_i)
a, b = m.times.map{gets.split.map{|n|n.to_i-1}}.transpose

ans = Array.new(m)
ans[m-1] = n*(n-1)/2
uf = UnionFind.new n

(m-1).downto(1) do |i|
    if uf.root(a[i]) != uf.root(b[i])
        ans[i-1] = ans[i] - uf.size(a[i])*uf.size(b[i])
        uf.connect(a[i], b[i])
    else
        ans[i-1] = ans[i]
    end
end

puts ans