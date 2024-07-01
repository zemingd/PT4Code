class NL
  attr_accessor :ans

  def initialize(nn,nodes)
    @ans = Array.new(nn)
    @nodes = nodes
  end

  def paint(idx = 0, col = '0')
    @ans[idx] = col
    case @nodes[idx]
    when Fixnum
      paint(@nodes[idx],rev(col)) if @ans[@nodes[idx]].nil?
    else
      @nodes[idx].each do |i|
        paint(i,rev(col)) if @ans[i].nil?
      end
    end

  end

  def rev(col)
    col=='0' ? '1' : '0'
  end
end

nn = gets.to_i
if nn==1
  puts 1
  exit
end

uvw =
  readlines.map do |i|
    arr = i.chomp.split.map(&:to_i)
    arr[-1] = arr[-1]/2
    arr
  end
ans = []
nodes = Array.new(nn)

# ノードがどれに繋がってるか調べる
uvw.each do |u,v,w|
  case nodes[u-1]
  when nil
    nodes[u-1] = v-1
  when Array
    nodes[u-1] << v-1
  else
    nodes[u-1] = [nodes[u-1],v-1]
  end

  case nodes[v-1]
  when nil
    nodes[v-1] = u-1
  when Array
    nodes[v-1] << u-1
  else
    nodes[v-1] = [nodes[v-1],u-1]
  end
end
#puts nodes.to_s
# 1から繋がってる順に交互に色を塗ってく。
nl = NL.new(nn, nodes)
nl.paint
puts nl.ans
