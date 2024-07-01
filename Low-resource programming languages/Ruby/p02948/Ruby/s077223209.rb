class ReversePopHeap
  attr_accessor :nodes, :size
  def initialize(n)
    @nodes = Array.new(n)
    @size = 0
  end

  def push(x)
    current_index = @size
    @size += 1
    while current_index > 0 do
      parent_index = (current_index - 1)>>1
      parent_value = @nodes[parent_index]
      break if parent_value >= x
      @nodes[current_index] = parent_value
      current_index = parent_index
    end
    @nodes[current_index] = x
  end

  def pop
    top = @nodes[0]
    current_node_index = 0
    current_node_value = @nodes[0] = @nodes[@size - 1]
    @nodes[@size - 1] = nil
    @size -= 1

    while
      child_node_index_r = (current_node_index + 1) << 1
      child_node_index_l = child_node_index_r - 1
      return top unless child_node_index_l < @size
      child_node_value_l = @nodes[child_node_index_l]
      child_node_value_r = @nodes[child_node_index_r]
      if child_node_value_r&.>child_node_value_l
        max_child_value = child_node_value_r
        max_child_index = child_node_index_r
      else
        max_child_value = child_node_value_l
        max_child_index = child_node_index_l
      end
      return top unless max_child_value > current_node_value
      change(current_node_index, max_child_index)
      current_node_index = max_child_index
    end
  end

  private

  def change(index_i, index_j)
    @nodes[index_i], @nodes[index_j] = @nodes[index_j], @nodes[index_i]
  end
end

n, m = gets.split.map(&:to_i)

values = []
n.times do
  a, b = gets.split.map(&:to_i)
  values << (a << 17) + b
end
values.sort!

mask = (1 << 17) - 1

rhp = ReversePopHeap.new(n)
ans = 0
ite = 0
1.step(m) do |limit_day|
  while true
    break unless values[ite] && (values[ite] >> 17) == limit_day
    rhp.push(values[ite] & mask)
    ite += 1
  end
  ans += rhp.pop.to_i if rhp.size > 0
end

puts ans