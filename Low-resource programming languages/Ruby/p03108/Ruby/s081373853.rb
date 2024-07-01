class Node
    attr_accessor :parent, :rank, :size
  
    def initialize(n)
        @parent = n
        @rank = 0
        @size = 1
    end
end
  
class UnionFindTree
    def initialize(n)
        @nodes = (0..n).to_a.map { |i| Node.new(i) }
    end
  
    def find(x)
        return x if @nodes[x].parent == x
  
        return @nodes[x].parent = find(@nodes[x].parent)
    end
  
    def unite(a, b)
        a = find(a)
        b = find(b)
        return if a == b

        if @nodes[a].rank < @nodes[b].rank
            @nodes[a].parent = b
            @nodes[b].size += @nodes[a].size
        else
            @nodes[b].parent = a
            @nodes[a].size += @nodes[b].size
            @nodes[a].rank += 1 if @nodes[a].rank == @nodes[b].rank
        end
    end
  
    def same?(a, b)
        find(a) == find(b)
    end

    def parents
        @nodes.map(&:parent)
    end

    def size(a)
        @nodes[a].size
    end

    def sizes
        @nodes.map(&:size)
    end
end
n, m = gets.split.map(&:to_i)
brgs = m.times.map{ gets.split.map(&:to_i) }.map{ |a, b| [a-1, b-1] }.reverse
tree = UnionFindTree.new(n)
ans = [n * (n-1) / 2]

brgs[0,m-1].each do |a, b|
    aa = tree.find(a)
    bb = tree.find(b)
    if aa == bb
        ans << ans[-1]
    else
        ans << ans[-1] - tree.size(aa) * tree.size(bb)
        tree.unite(a, b)
    end
end

puts ans.reverse.join("\n")