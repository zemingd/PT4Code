class Node
  def initialize
    @children = []
    @counter = 0
  end
  def add n
    @counter += n
    @children.each{|child| child.add(n)}
  end
  def children
    @children
  end
  def counter
    @counter
  end
end

n,q = gets.split.map(&:to_i)

links = (1..(n-1)).map{|i| gets.split.map(&:to_i)}
opes = (1..q).map{|i| gets.split.map(&:to_i)}

nodes = Hash.new
1.upto(n){|i|
  nodes[i] = Node.new
}

links.each {|link|
  nodes[link[0]].children.push(nodes[link[1]])
}

opes.each {|ope|
  nodes[ope[0]].add(ope[1])
}

puts nodes.map{|id,node| node.counter.to_s }.join(" ")
