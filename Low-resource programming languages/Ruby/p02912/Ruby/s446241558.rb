
class MaxHeap
  attr_accessor :nodes
  def initialize(defalut = [])
    @nodes = defalut
  end

  def pop
    popped = nodes.shift
    return popped if nodes.empty?

    nodes.unshift(nodes.pop)

    tmp_index = 0
    while (tmp_index * 2 + 1) < nodes.size
      left_child_index = tmp_index * 2 + 1
      right_child_index = tmp_index * 2 + 2
      if right_child_index >= nodes.size
        if nodes[tmp_index] < nodes[left_child_index]
          swap(tmp_index, left_child_index)
          tmp_index = left_child_index
        else
          break
        end
      else
        max_child_index = if nodes[left_child_index] > nodes[right_child_index]
                            left_child_index
                          else
                            right_child_index
                          end
        if nodes[tmp_index] < nodes[max_child_index]
          swap(tmp_index, max_child_index)
          tmp_index = max_child_index
        else
          break
        end
      end
    end
    popped
  end

  def push(node)
    return @nodes = [node] if nodes.empty?

    tmp_index = nodes.size
    while tmp_index > 0 do
      parent_index = (tmp_index - 1) / 2

      if @nodes[parent_index] && @nodes[parent_index] < node
        # swap
        @nodes[parent_index], @nodes[tmp_index] =  node,  @nodes[parent_index]
        tmp_index = parent_index
      else
        @nodes[tmp_index] = node
        break
      end
    end

    @nodes
  end

  private

  def swap(index, other_index)
    nodes[index], nodes[other_index] = nodes[other_index], nodes[index]
  end
end

class PriorityQueue
  attr_accessor :heap

  def initialize(direction, default = nil)
    case direction
    when :max
      @heap = MaxHeap.new(default)
    else
      ArgumentError
    end
  end

  def dequeue
    heap.pop
  end

  def enqueue(e)
    heap.push(e)
  end
end


N, M = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort!.reverse!
priority_queue = PriorityQueue.new(:max, array.dup)
discount = 0

M.times do
  max = priority_queue.dequeue
  discount += (max / 2.0).ceil
  priority_queue.enqueue(max / 2)
end


puts array.inject(&:+) - discount
