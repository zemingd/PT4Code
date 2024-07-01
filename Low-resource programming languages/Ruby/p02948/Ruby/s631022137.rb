class SkewHeap
  def initialize(rev = nil)
    @rev = rev
  end
  def push(k)
    @root = meld(@root, Node.new(k))
  end
  def top
    @root.key
  end
  def empty?
    @root.nil?
  end
  def pop
    key = @root.key
    @root = meld(@root.lchild, @root.rchild)
    key
  end
  def meld(lhs, rhs)
    return lhs unless rhs
    return rhs unless lhs
    lhs, rhs = rhs, lhs unless lhs < rhs
    lhs, rhs = rhs, lhs if @rev
    lhs.rchild = meld(lhs.rchild, rhs)
    lhs.lchild, lhs.rchild = lhs.lchild, lhs.rchild
    lhs
  end
  class Node
    include Comparable
    attr_accessor :key, :lchild, :rchild
    def initialize(k)
      @key = k
    end
    def <=>(other)
      @key <=> other.key
    end
  end
end

N,M=gets.split.map(&:to_i)
X=N.times.map{gets.split.map(&:to_i)}.sort{|l,r|l[0]<=>r[0]}
a=0
q=SkewHeap.new(true)
(1..M).each do |i|
  q.push(X.shift[1]) until X.empty? || i<X.first[0]
  a+=q.pop unless q.empty?
end
p a
