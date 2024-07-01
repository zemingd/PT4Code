class PriorityQueue # DESC
  def initialize(array = [])
    @data = []
    array.each{|a| push(a)}
  end
  def push(element)
    @data.push(element)
    bottom_up
  end
  def pop
    return nil if size == 0
    return @data.pop if size == 1
    min = @data[0]
    @data[0] = @data.pop
    top_down
    min
  end
  def size
    @data.size
  end
  def length
    @data.length
  end
  def empty?
    @data.empty?
  end
  def array
    @data
  end
  private
  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end
  def parent_idx(target_idx)
    (target_idx - (target_idx.even? ? 2 : 1)) / 2
  end
  def bottom_up
    target_idx = size - 1
    return if target_idx == 0
    parent_idx = parent_idx(target_idx)
    while (@data[parent_idx] < @data[target_idx])
      swap(parent_idx, target_idx)
      target_idx = parent_idx
      break if target_idx == 0
      parent_idx = parent_idx(target_idx)
    end
  end
  def top_down
    target_idx = 0
    while (has_child?(target_idx))
      a = left_child_idx(target_idx)
      b = right_child_idx(target_idx)
      if @data[b].nil?
        c = a
      else
        c = @data[a] >= @data[b] ? a : b
      end
      if @data[target_idx] < @data[c]
        swap(target_idx, c)
        target_idx = c
      else
        return
      end
    end
  end
  def left_child_idx(idx)
    (idx * 2) + 1
  end
  def right_child_idx(idx)
    (idx * 2) + 2
  end
  def has_child?(idx)
    ((idx * 2) + 1) < @data.size
  end
end #DESC

N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
pq = PriorityQueue.new(arr)

M.times do
  cost = pq.pop / 2
  pq.push(cost)
end

puts pq.array.inject(:+)