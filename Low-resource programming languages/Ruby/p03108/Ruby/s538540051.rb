class UnionFind
    attr_reader :set_size
    attr_reader :ans
    def initialize(n)
        @par = Array.new(n)
        n.times{ |i| @par[i] = i }
        @rank = Array.new(n, 0)
        @set_size = Array.new(n, 1)

        @ans = n*(n-1)/2
    end

    def find(x)
        if @par[x] == x
            x
        else
            @par[x] = find(@par[x])
        end
    end

    def unite(x,y)
        x = find(x)
        y = find(y)
        return if x == y

        @ans -= @set_size[y] * @set_size[x]

        if @rank[x] < @rank[y]
            @par[x] = y
            @set_size[y] += @set_size[x]
        else
            @par[y] = x
            @set_size[x] += @set_size[y]
            @rank[x] += 1 if @rank[x] == @rank[y]
        end
    end

    def same?(x, y)
        find(x) == find(y)
    end
end


N, M = gets.split.map(&:to_i)
as, bs = M.times.map{gets.split.map(&:to_i)}.transpose

uf = UnionFind.new(N)
ans = []
(M-1).downto(0) do |i|
    ans[i] = uf.ans
    uf.unite(as[i]-1, bs[i]-1)
end
puts ans