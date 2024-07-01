class PriorityQueue
  def initialize(&block)
    @heap = []
    @cmp = block || lambda{|a, b| a <=> b }
  end

  def add(elem)
    i = @heap.length
    while i > 0
      parent = (i - 1) / 2
      break if @cmp.call(@heap[parent], elem) != -1
      @heap[i] = @heap[parent]
      i = parent
    end
    @heap[i] = elem
  end

  def pop
    max = @heap[0]
    min = @heap.pop
    return max if @heap.empty?
    i = 0
    while i*2+1 < @heap.length
      left = i*2+1
      right = i*2+2
      if @heap[right].nil?
        child = left
      else
        child = @cmp.call(@heap[left], @heap[right]) >= 0 ? left : right
      end
      break if @cmp.call(min, @heap[child]) >= 0
      @heap[i] = @heap[child]
      i = child
    end
    @heap[i] = min
    return max
  end

  attr_reader :heap
  alias push :add
  alias :<< :add
end

require 'set'

x,y,z,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse
bs = gets.split.map(&:to_i).sort.reverse
cs = gets.split.map(&:to_i).sort.reverse

q = PriorityQueue.new {|a, b| a[0] <=> b[0] }
q.add([as[0]+bs[0]+cs[0], 0, 0, 0])

count = 0
alread_set = Set.new
while count < k
  ans = q.pop
  puts ans[0]
  [
    [ans[1]+1,ans[2],ans[3]],
    [ans[1],ans[2]+1,ans[3]],
    [ans[1],ans[2],ans[3]+1],
  ].each do |item|
    key = item.join(',')
    next if item[0]>=x || item[1]>=y || item[2]>=z || alread_set.include?(key)
    alread_set.add(key)
    q.add([as[item[0]]+bs[item[1]]+cs[item[2]], item[0], item[1], item[2]])
  end
  count += 1
end
