class Tree
  attr_accessor(:child, :param)

  def initialize()
    @child = []
    @param = 0
  end

  def child()
    @child
  end

  def param()
    @param
  end

  def setchild(x)
    @child.push(x)
  end

  def plus(x)
    @param += x
  end

end

n,q = gets.chomp.split(" ").map(&:to_i)
tree = Array.new(n).map{Tree.new}
(n-1).times do |i|
  a,b = gets.chomp.split(" ").map(&:to_i)
  tree[a-1].setchild(b-1)
end
q.times do |i|
  p,x = gets.chomp.split(" ").map(&:to_i)
  queue = [p-1]
  while !queue.empty?
    v = queue[0]
    queue.shift
    tree[v].plus(x)
    tree[v].child().each do |x|
      queue.push(x)
    end
  end
end

n.times do |i|
  print "#{tree[i].param()} "
end