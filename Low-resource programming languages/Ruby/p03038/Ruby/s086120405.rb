class PriorityQueue
  def initialize(array = [])
    @data = []
    array.each{|a| push(a)}
  end

  def insert(element)
    @data.push(element)
    bottom_up
  end

  def pop
    if size == 0
      return nil
    elsif size == 1
      return @data.pop
    else
      min = @data[0]
      @data[0] = @data.pop
      top_down
      return min
    end
  end


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
    while (@data[parent_idx] > @data[target_idx])
      swap(parent_idx, target_idx)
      target_idx = parent_idx
      break if target_idx == 0
      parent_idx = parent_idx(target_idx)
    end
  end

  def top_down
    target_idx = 0

    # child がある場合
    while (has_child?(target_idx))

      a = left_child_idx(target_idx)
      b = right_child_idx(target_idx)

      if @data[b].nil?
        c = a
      else
        c = @data[a] <= @data[b] ? a : b
      end

      if @data[target_idx] > @data[c]
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

pq = PriorityQueue.new()

n, m = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort

sousa = Array.new(m)
m.times do |i|
	sousa[i] = gets.chomp.split.map(&:to_i)
end

sousa = sousa.sort{|a,b| a[1] <=> b[1]}.reverse

index = 0

m.times do |i|
	sousa[i][0].times do 
		break if index >= n
		break if arr[index] >= sousa[i][1]
		arr[index] = sousa[i][1]
		index += 1
	end
	#p arr
end

puts arr.inject(:+)