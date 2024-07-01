require 'pp'
class PriorityQueue
  def initialize(&cmp)
    # topとbottomの関係を書く. デフォルトでは大きい順に出てくる
    @cmp = cmp || Proc.new { |bottom, top| bottom < top }
    @heap = []
  end

  def size
    @heap.size
  end

  # def empty?
  #   @heap.size == 0
  # end

  # def inspect # デバック用 # ブロック月ソートは嘘になってしまう
  #   tmp = Proc.new { |a,b| @cmp.call(a, b) ? 1 : 0 }
  #   @heap.sort(&tmp).inspect
  # end

  def push(x)
    @heap << x
    index = size - 1
    while(p_i = ((index+1)/2)-1; @cmp.call(@heap[p_i],@heap[index]))
      @heap[p_i], @heap[index] = @heap[index], @heap[p_i]
      index = p_i
      break if index == 0
    end
    self
  end

  def pop
    case size
    when 0 then return nil
    when 1 then return @heap.delete_at(0)
    when 2 then return @cmp.call(@heap[1], @heap[0]) ? @heap.delete_at(0) : @heap.delete_at(1)
    end
    popped = @heap[0]
    @heap[0] = @heap.delete_at(-1)
    index = 0
    loop do
      break if index*2 + 1 >= size || index*2 + 2 >= size
      if @cmp.call(@heap[index*2 + 2], @heap[index*2 + 1]) && @cmp.call(@heap[index], @heap[index*2 + 1])
        @heap[index*2 + 1], @heap[index] = @heap[index], @heap[index*2 + 1]
        index = index*2 + 1
      elsif !(@cmp.call(@heap[index*2 + 2], @heap[index*2 + 1])) && @cmp.call(@heap[index], @heap[index*2 + 2])
        @heap[index*2 + 2], @heap[index] = @heap[index], @heap[index*2 + 2]
        index = index*2 + 2
      else
        break
      end
    end
    popped
  end

  alias :<< :push

  # private
  #
  # def swap!(a, b)
  #   @heap[a], @heap[b] = @heap[b], @heap[a]
  #   nil
  # end

  # def parent_index(i)
  #   ((i+1)/2)-1
  # end
  #
  # def left_child_index(i)
  #   i*2 + 1
  # end
  #
  # def right_child_index(i)
  #   i*2 + 2
  # end
  #
  # alias :pi :parent_index
  # alias :lci :left_child_index
  # alias :rci :right_child_index
end

pq = PriorityQueue.new { |bottom, top| bottom[1] < top[1] }
n, m = gets.split.map &:to_i
ab = []
n.times do |i|
  ab << gets.split.map(&:to_i) # 日、金
end

ab = ab.group_by{|a|a[0]}
res = 0
1.upto m do |i|
  if ab[i]
    ab[i].each{|a|pq << a}
  end
  tmp = pq.pop
  res += tmp ? tmp[1] : 0
end
p res
