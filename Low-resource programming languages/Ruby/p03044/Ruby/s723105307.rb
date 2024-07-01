class NL
  attr_accessor :ans

  def initialize(nn,even_nodes,nodes)
    @ans = Array.new(nn)
    @e_nodes = even_nodes
    @nodes = nodes
  end

  def exec_paint
    # 偶数ノードを黒く塗る
    0.upto(@e_nodes.size-1).each do |i|
      unless @e_nodes[i].nil?
        @ans[i] = '0'
      end
    end
    # 偶数ノードからつながっている奇数ノードを交互に塗る
    0.upto(@e_nodes.size-1).each do |i|
      if @e_nodes[i] != @nodes[i]
        diff = [@nodes[i]].flatten - [@e_nodes[i]].flatten.compact
        diff.each do |idx|
          paint(idx, '1')
        end
      end
    end
  end

  def paint(idx = 0, col = '0')
    return unless @ans[idx].nil?

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

def push_nodes(nodes,from,to)
  case nodes[from-1]
  when nil
    nodes[from-1] = to-1
  when Array
    nodes[from-1] << to-1
  else
    nodes[from-1] = [nodes[from-1],to-1]
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
    arr[-1] = arr[-1]%2
    arr
  end.sort_by{|a|a[2]}
ans = []
nodes = Array.new(nn)
even_nodes = Array.new(nn)

# ノードがどれに繋がってるか調べる
uvw.each do |u,v,w|
  push_nodes(nodes,u,v)
  push_nodes(nodes,v,u)
  if w==0
    push_nodes(even_nodes,u,v)
    push_nodes(even_nodes,v,u)
  end
end
#puts nodes.to_s

# 偶数距離のノードを全部黒で塗る
# 偶数ノードに繋がってる奇数ノードを全部交互に塗る
nl = NL.new(nn, even_nodes, nodes)
nl.exec_paint
puts nl.ans
