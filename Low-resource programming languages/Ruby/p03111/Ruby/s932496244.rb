$N,$A,$B,$C = gets.split.map(&:to_i)
$L = Array.new($N) {gets.to_i}
$INF = 10**9
$min = $INF

class Node
  attr_accessor :depth, :array

  def initialize(depth, array)
    @depth = depth
    @array = array
  end
end

def calc(array)
  mp = -30
  a = 0
  b = 0
  c = 0

  array.each_with_index do |v, i|
    case v
    when 0 then
      a+=$L[i];mp+=10
    when 1 then
      b+=$L[i];mp+=10
    when 2 then
      c+=$L[i];mp+=10
    end
  end

  if [a,b,c].min == 0 then
    return $INF
  else
    return mp + (a-$A).abs + (b-$B).abs + (c-$C).abs
  end
end

def dfs()
  stack = [Node.new(0,[])]
  while !stack.empty?

    v = stack.pop()

    if v.depth > $N-1 then
      c = calc(v.array)
      $min = c if $min > c
    else
      childs = Array.new(4) do |i|
        Node.new(v.depth+1, v.array+[i])
      end

      childs.each do |child|
        stack.push(child)
      end
    end
  end
end

dfs()
puts $min
