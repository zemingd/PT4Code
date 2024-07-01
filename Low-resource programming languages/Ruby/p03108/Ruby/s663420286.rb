class UnionFind
    def initialize(n)
        @have_node_num = Array.new(n, -1)
    end
    def findSet(x)
        return x if @have_node_num[x] < 0
        @have_node_num[x] = findSet(@have_node_num[x])
        return @have_node_num[x]
    end
    def link(x, y)
        return if x == y
        x, y = y, x if @have_node_num[x] > @have_node_num[y]
        @have_node_num[x] += @have_node_num[y]
        @have_node_num[y] = x
    end
    def unite(x, y)
        link(findSet(x), findSet(y))
    end
    def same(x, y)
        findSet(x) == findSet(y)
    end
    def size(idx)
        return -@have_node_num[findSet(idx)]
    end
end

n, m = gets.chomp.split.map(&:to_i)
ans = [n*(n-1)/2]
uf = UnionFind.new(n+1)
inputs = []
m.times do
    inputs << gets.chomp.split.map(&:to_i)
end

(m-1).downto(1) do |i|
    a, b = inputs[i]
    if uf.same(a, b) then
        ans << ans[-1]
    else
        ans << ans[-1] - uf.size(a) * uf.size(b)
        uf.unite(a, b)
    end
end

ans.reverse!
puts ans.join("\n")