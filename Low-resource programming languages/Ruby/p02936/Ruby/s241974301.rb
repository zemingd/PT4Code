class Tree
  def initialize(value)
    @value = value
    @children = []
  end
  attr_reader :children
  attr_accessor :value
  
  def addchild(child)
    @children << child
    return child
  end
  
  def each
    yield(self)
    @children.each do |child|     #ここはArray#each
      child.each {|c| yield(c)}   #ここはTree#eachで、再帰する
    end
  end
end

trees = {}

n, q = gets.split(' ').map(&:to_i)

(n-1).times.each do
  p, c = gets.split(' ').map(&:to_i)
  p_tree = trees[p]
  unless p_tree
    p_tree = Tree.new(0)
    trees[p] = p_tree
  end
  c_tree = Tree.new(0)
  trees[c] = c_tree
  p_tree.addchild(c_tree)
end

q.times.each do
  p, x = gets.split(' ').map(&:to_i)
  p_tree = trees[p]
  p_tree.each { |c| c.value += x }
end

puts Hash[trees.sort].values.map(&:value).join(' ')