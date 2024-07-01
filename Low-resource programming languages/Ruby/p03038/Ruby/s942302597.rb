# frozen_string_literal: true

class Heap
  attr_reader :nodes, :relational_operator

  def initialize(default = [], direction)
    @nodes = default
    @relational_operator = direction == :max ? :< : :>
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
        if need_swap?(nodes[tmp_index], nodes[left_child_index])
          swap(tmp_index, left_child_index)
          tmp_index = left_child_index
        else
          break
        end
      else
        max_direction_child_index =
            if need_swap?(nodes[right_child_index], nodes[left_child_index])
              left_child_index
            else
              right_child_index
            end

        if need_swap?(nodes[tmp_index], nodes[max_direction_child_index])
          swap(tmp_index, max_direction_child_index)
          tmp_index = max_direction_child_index
        else
          break
        end
      end
    end

    popped
  end

  def push(node)
    tmp_index = nodes.size
    while tmp_index > 0
      parent_index = (tmp_index - 1) / 2

      if nodes[parent_index] && need_swap?(nodes[parent_index], node)
        swap(parent_index, tmp_index)
        tmp_index = parent_index
      else
        break
      end
    end

    @nodes[tmp_index] = node
  end

  private

  def need_swap?(node, other_node)
    node.send(relational_operator, other_node)
  end

  def swap(index, other_index)
    nodes[index], nodes[other_index] = nodes[other_index], nodes[index]
  end
end

class PriorityQueue
  attr_reader :heap

  def initialize(direction, default = nil)
    case direction
    when :max, :min
      @heap = Heap.new(default, direction)
    else
      ArgumentError
    end
  end

  def nodes
    heap.nodes
  end

  def dequeue
    heap.pop
  end

  def enqueue(e)
    heap.push(e)
  end
end


N, M = gets.split.map(&:to_i)
pq = PriorityQueue.new(:min, [])
gets.split.each do |a|
  pq.enqueue a.to_i
end
#binding.irb
nums = []
M.times do
  b, c = gets.split.map(&:to_i)
  nums += Array.new(b, c)
end
nums.sort!.reverse!

result = 0
while pq.nodes.size > 0 do
  i = pq.dequeue
  j = nums.first

  if j && j > i
    result += j
    nums.shift
  else
    result += i
  end
end

puts result