$N,$A,$B,$C = gets.split.map(&:to_i)
$L = Array.new($N) {gets.to_i}
$INF = 10**9
$min = $INF

class Node
  attr_accessor :depth, :mp, :a, :b, :c

  def initialize(depth, mp, a, b, c)
    @depth = depth
    @mp = mp
    @a = a
    @b = b
    @c = c
  end
end

def calc(v)
  if [v.a,v.b,v.c].min == 0
    return $INF
  else
    return v.mp + (v.a-$A).abs+(v.b-$B).abs+(v.c-$C).abs
  end
end

def dfs()
  stack = [Node.new(0,-30,0,0,0)]

  while !stack.empty? do

    v = stack.pop()

    if v.depth > $N-1 then
      c = calc(v)
      $min = c if $min > c
    else
      stack.push(Node.new(v.depth+1,v.mp+10,v.a+$L[v.depth-1], v.b, v.c))
      stack.push(Node.new(v.depth+1,v.mp+10,v.a, v.b+$L[v.depth-1], v.c))
      stack.push(Node.new(v.depth+1,v.mp+10,v.a, v.b, v.c+$L[v.depth-1]))
      stack.push(Node.new(v.depth+1,v.mp,v.a, v.b, v.c))
    end
  end
end

dfs()
puts $min
