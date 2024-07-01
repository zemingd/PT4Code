class UnionFind
  attr_reader :n, :parent, :size
  attr_writer :parent
  def initialize(n)
    @n = n
    @parent = nil
    @size = 1
  end

  def root
    arr = []
    tmp = self
    loop do
      break if tmp.parent.nil?
      arr << tmp
      tmp = tmp.parent
    end

    arr.each { |e| e.parent = tmp }

    tmp
  end

  def add_size(s)
    @size += s
  end

  def union(other)
    @parent = other.root
    other.root.add_size(size)
  end

  def same_group?(other)
    root.n == other.root.n
  end
end

def read_i
  gets.chomp.split(' ').map(&:to_i)
end

n, m = read_i
bridges = m.times.map { read_i }
ts = n.times.map { |i| UnionFind.new(i) }
ts.unshift(nil)

tmp = n*(n-1)/2
rev_ans = bridges.reverse_each.map do |(a, b)|
  ans = tmp
  if !ts[a].same_group?(ts[b])
    tmp -= ts[a].root.size * ts[b].root.size if tmp != 0
    ts[a].union(ts[b])
  end
  ans
end

rev_ans.reverse_each { |e| puts e }
