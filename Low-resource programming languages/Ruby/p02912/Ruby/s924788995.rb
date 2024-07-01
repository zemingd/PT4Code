class PriorityQueue
  def initialize(array = [])
    @data = []
    array.each{|a| push(a)}
  end

  def push(element)
    @data.push(element)
    bottom_up
  end

  def pop
    if size == 0
      return nil
    elsif size == 1
      return @data.pop
    else
      max = @data[0]
      # popで末尾の要素を削除し、先頭に持ってくる
      @data[0] = @data.pop

      top_down

      return max
    end
  end

  def to_array
    @data
  end

  private

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end

  def size
    @data.size
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
      # 頂点まで来たらブレーク
      break if target_idx == 0
      parent_idx = parent_idx(target_idx)
    end
  end

  def top_down
    target_idx = 0

    # child がある場合
    while (has_child?(target_idx))

      # あくまでもインデックスなので最初は1,2 次は3,4か5,6
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

  # @param Integer
  # @return Integer
  def left_child_idx(idx)
    (idx * 2) + 1
  end

  # @param Integer
  # @return Integer
  def right_child_idx(idx)
    (idx * 2) + 2
  end

  # @param Integer
  # @return Boolent
  def has_child?(idx)
    ((idx * 2) + 1) < @data.size
  end
end


n, m = gets.chop.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)

pq = PriorityQueue.new(a)


m.times do |i|
  tmp = pq.pop
  pq.push(tmp/2)
end

p pq.to_array.inject(:+)


