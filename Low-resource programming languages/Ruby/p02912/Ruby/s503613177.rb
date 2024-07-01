class PriorityQueue
  # min heap
  def initialize(source = [])
    @heap = []
    source.each { |e| push(e) }
  end

  def size
    @heap.size
  end

  def empty?
    @heap.empty?
  end

  def top
    @heap.first
  end

  def push(value)
    @heap << value
    new_node_index = @heap.size - 1

    while new_node_index > 0 do
      parent_node_index = (new_node_index - 1) / 2

      break if @heap[parent_node_index] <= value

      @heap[parent_node_index], @heap[new_node_index] = @heap[new_node_index], @heap[parent_node_index]
      new_node_index = parent_node_index
    end

    @heap[new_node_index] = value
  end

  def pop
    min = top

    tmp_node = @heap.pop

    tmp_index = 0
    while (tmp_index * 2 + 1) < size do
      tmp_left_child_index  = tmp_index * 2 + 1
      tmp_right_child_index = tmp_index * 2 + 2
      min_child_index = tmp_left_child_index

      if tmp_right_child_index < size && @heap[tmp_left_child_index] > @heap[tmp_right_child_index]
        min_child_index = tmp_right_child_index
      end

      break if @heap[min_child_index] >= tmp_node

      @heap[tmp_index] = @heap[min_child_index]
      tmp_index = min_child_index
    end

    @heap[tmp_index] = tmp_node unless empty?

    min
  end
end

n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

pq = PriorityQueue.new()
a.each do |x|
  pq.push(-x)
end

m.times do
  t = pq.pop()
  t *= -1
  t /= 2
  pq.push(-t)
end

ans = 0
n.times do
  ans -= pq.pop()
end

puts ans
