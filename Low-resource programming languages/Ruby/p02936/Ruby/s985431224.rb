Node = Struct.new(:children, :counter)

class Tree
  def initialize(n)
    @tree = Array.new(n + 1) {Node.new([], 0)}
    @adjacent = Array.new(n + 1) {[]}
  end
  
  def insert(a, b)
    @adjacent[a] << b
    @adjacent[b] << a
  end
  
  def build_tree
    build = ->(s, parent) {
      @tree[s].children = @adjacent[s] - parent
      @tree[s].children.each {|child| build.(child, [s])}
    }
    build.(1, [])
  end
  
  def traverse(node, x)
    @tree[node].counter += x
    @tree[node].children.each {|child| traverse(child, x)}
  end
  
  def putout
    @tree[1..-1].map {|node| node.counter}
  end
end

n, q = gets.split.map(&:to_i)
t = Tree.new(n)

(n - 1).times do
  a, b = gets.split.map(&:to_i)
  t.insert(a, b)
end
t.build_tree

q.times do
  p, x = gets.split.map(&:to_i)
  t.traverse(p, x)
end

puts t.putout.join(" ")