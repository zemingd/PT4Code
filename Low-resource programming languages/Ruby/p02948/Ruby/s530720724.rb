# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007



# 優先度付きキュー
class PriorityQueue
  # 優先度付きキューのノードクラス
  class Node
    include Comparable
    attr_accessor :priority
    def initialize(priority)
      @priority=priority
    end
    def <=>(other)
      return @priority<=>other.priority
    end
  end

  def initialize
    @nodes = [nil]
  end

  # Nodeクラスのノードを保存する
  def <<(new_node)
    @nodes << new_node
    bubble_up(@nodes.size-1)
  end
  alias :push :<<

  # 最大優先度のノードを取り出す
  def >>
    return nil if empty?
    exchange(1,@nodes.size-1)
    max=@nodes.pop
    bubble_down(1)
    return max
  end
  alias :pop :>>

  def empty?
    return @nodes.size==1
  end


  # ヒープ内で適切な位置になるように要素を上に移動させる
  def bubble_up(index)
    parent_index=index/2
    return if index<=1
    return if @nodes[parent_index]>=@nodes[index]
    exchange(index, parent_index)
    bubble_up(parent_index)
  end
  # ヒープ内で適切な位置になるように要素を下に移動させる
  def bubble_down(index)
    child_index=index*2
    return if child_index>@nodes.size-1
    child_index+=1 if child_index<@nodes.size-1 && @nodes[child_index+1]>@nodes[child_index]
    return if @nodes[index]>@nodes[child_index]
    exchange(index,child_index)
    bubble_down(child_index)
  end
  
  # @nodes内のa番目の要素とb番目の要素を交換する
  def exchange(a,b)
    @nodes[a], @nodes[b] = @nodes[b], @nodes[a]
  end
end


N,M=gets.split.map(&:to_i)
task_part=Array.new(10**5+1){Array.new}
N.times do |i|
  a,b=gets.split.map(&:to_i)
  task_part[a-1] << b
end

PQ=PriorityQueue.new
ans=0

M.times do |t|
  task_part[t].each do |b|
    PQ << PriorityQueue::Node.new(b)
  end
  ans+=PQ.pop.priority if !PQ.empty?
end


puts ans