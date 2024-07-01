class SegmentTree
  ROOT = 1
  private_constant :ROOT

  attr_reader :size

  def initialize(n, x = 0)
    @size = 1
    @size *= 2 while @size < n
    @sum = Array.new(2 * @size){x}
  end

  def parent(i)
    i / 2
  end
  def lchild(i)
    i * 2
  end
  def rchild(i)
    i * 2 + 1
  end

  def leaf?(i)
    @size <= i
  end

  def update(i, v)
    i += @size
    @sum[i] = v
    until i == ROOT
      i = parent(i)
      @sum[i] = @sum[lchild(i)].gcd(@sum[rchild(i)])
    end
  end

  def sum(l, r)
    sum_dfs(l, r, ROOT, 0, @size)
  end
  def sum_dfs(a, b, i, l, r)
    return 0       if b <= l || r <= a
    return @sum[i] if a <= l && r <= b
    m = (l + r) / 2
    sum_dfs(a, b, lchild(i), l, m).gcd(sum_dfs(a, b,  rchild(i), m, r))
  end
end

N=gets.to_i
A=gets.split.map &:to_i

segtree = SegmentTree.new(N)
A.each.with_index do |a, i|
  segtree.update(i, a)
end
p N.times.map{|i|
  l = i.zero? ? 0 : segtree.sum(0, i)
  r = i+1==N  ? 0 : segtree.sum(i+1, N)
  l.gcd(r)
}.max
