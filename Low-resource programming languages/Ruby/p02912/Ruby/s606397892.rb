# 参考: https://github.com/kanwei/algorithms/blob/master/lib/containers/heap.rb

class Heap
  attr_accessor :nodes

  def initialize(type)
    @nodes = []
    @index = {}
    @size = 0
    @type = type
  end

  def top
    @size == 0 ? nil : @nodes[0]
  end

  def to_s
    nodes_to_s = []
    @nodes.each do | node |
      nodes_to_s << node.value
    end
    "#{nodes_to_s}"
  end

  def push(current_value)
    @nodes << nil

    current_index = @size
    @size += 1
    current_node = Node.new(current_value)

    while current_index > 0
      parent_index = (current_index - 1) >> 1
      parent_node = @nodes[parent_index]
      break if @type==:min && parent_node.value <= current_node.value
      break if @type==:max && parent_node.value >= current_node.value

      @index[parent_node] = current_index
      @nodes[current_index] = parent_node
      current_index = parent_index
    end
    @index[current_node] = current_index
    @nodes[current_index] = current_node
  end

  def pop
    @size -= 1
    ret = @nodes[0]
    if @size == 0
      @nodes = []
      return ret
    end

    current_node = @nodes.pop
    current_index = @index.delete(@nodes[0])

    @nodes[current_index] = current_node
    @index[current_node] = current_index

    top_down_change(current_index, current_node)

    return ret
  end

  private
  def top_down_change(current_index, current_node)
    while
      child_index_r = (current_index << 1) + 2
      child_index_l = child_index_r - 1
      break unless child_index_l < @size
      break if child_index_l >= @size && child_index_r >= @size

      child_node_r = get_child_x(child_index_r)
      child_node_l = get_child_x(child_index_l)

      if (@type==:min && child_node_l.value > child_node_r.value) ||
         (@type==:max && child_node_l.value < child_node_r.value)
        child_node = child_node_r
        child_index = child_index_r
      else
        child_node = child_node_l
        child_index = child_index_l
      end
      break if (@type==:min && child_node.value > current_node.value) ||
               (@type==:max && child_node.value < current_node.value)
      change(current_index, child_index)
      current_index = child_index
    end
  end

  def get_child_x(child_index_x)
    if child_index_x < @size
      child_node_x = @nodes[child_index_x]
    else
      child_node_x = Node.new(Float::INFINITY) if @type==:min
      child_node_x = Node.new(-1) if @type==:max
    end 
    child_node_x
  end

  def change(i, j)
    @nodes[i], @nodes[j] = @nodes[j], @nodes[i]
    @index[@nodes[i]] = i
    @index[@nodes[j]] = j
  end

  class Node
    attr_accessor :value
    def initialize(value); @value=value; end
  end
end


class MinHeap < Heap
  def initialize; super(:min); end
  def push(current_value); super(current_value); end
  def delete(delete_value); super(delete_value); end
end


class MaxHeap < Heap
  def initialize; super(:max); end
  def push(current_value); super(current_value); end
  def delete(delete_value); super(delete_value); end
end

n, m = gets.split.map(&:to_i)
max_heap = MaxHeap.new
gets.split.map(&:to_i).each do | a |
  max_heap.push(a)
end
m.times do
  node = max_heap.pop
  max_heap.push(node.value / 2)
end
sum = 0
max_heap.nodes.each do | node |
  sum += node.value
end
p sum
