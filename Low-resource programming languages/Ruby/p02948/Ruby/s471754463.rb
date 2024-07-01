class MaxHeap
  def initialize
    @heap = [nil]
    @size = 0
  end
  
  def insert(key)
    @heap << key
    @size += 1
    up_heap(@size / 2)
  end
  
  def up_heap(i)
    return if i.zero?
    l, r = i * 2, i * 2 + 1
    largest = (l <= @size and @heap[l] > @heap[i]) ? l : i
    largest = r if r <= @size and @heap[r] > @heap[largest]
    unless largest == i
      @heap[i], @heap[largest] = @heap[largest], @heap[i]
      up_heap(i / 2)
    end
  end
   
  def remove_root
    a = @heap[1]
    b = @heap.pop
    @size -= 1
    return b if @heap.size == 1
    @heap[1] = b
    down_heap(1)
    a
  end
   
  def down_heap(i)
    return if i > @size
    l, r = i * 2, i * 2 + 1
    largest = (l <= @size and @heap[l] > @heap[i]) ? l : i
    largest = r if r <= @size and @heap[r] > @heap[largest]
    unless largest == i
      @heap[i], @heap[largest] = @heap[largest], @heap[i]
      down_heap(largest)
    end
  end
  
  def size
    @heap.size - 1
  end
end


n, m = gets.split.map(&:to_i)
given = Hash.new {|h, v| h[v] = []}
n.times.each do
  a, b = gets.split.map(&:to_i)
  given[a] << b
end

mh = MaxHeap.new
sum = 0

(1..m).each do |left_day|
  given[left_day].each {|reward| mh.insert(reward)}
  sum += mh.remove_root unless mh.size.zero?
end
puts sum