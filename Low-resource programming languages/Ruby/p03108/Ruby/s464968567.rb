require 'set'

class UnionFind
  def initialize(n)
    @par = [*(0..(n-1))]
    @size = Array.new(n, 1)
  end

  def root(x)
    return x if @par[x] == x # 根
    @par[x] = root(@par[x]); # 経路圧縮
  end

  def all_root
    [*(0..(@par.length-1))].map {|x| root(x)}
  end

  def same(x,y)
    return root(x) == root(y);
  end

  def size(x)
    @size[root(x)]
  end

  def all_size
    @size
  end

  def unite(x, y)
    x = root(x)
    y = root(y)
    return if x == y
    @par[x] = y;
    @size[y] += @size[x]
  end
end

class Main
  def self.main lines
    n,m = lines.shift.split.map(&:to_i)

    uf = UnionFind.new(n)
    r = []
    c = [*1..(n-1)].inject(:+)
    [*1..m].map do |x|
      # p uf.all_root
      # p uf.all_size
      # p c
      r.push(c)

      a, b = lines.pop.split.map(&:to_i)
      a-=1
      b-=1
      # p "#{a}, #{b}"
      # p "#{uf.size(a)}*#{uf.size(b)}"
      c -= uf.size(a)*uf.size(b) if !uf.same(a,b)
      uf.unite(a,b)
    end
    r.reverse.join("\n") + "\n"
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end