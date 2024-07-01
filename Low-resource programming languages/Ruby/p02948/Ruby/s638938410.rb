class PriorityQueue
  def initialize(array = [])
    @data = []
    array.each{|a| add(a)}
  end
  
  def add(element)
    @data.push(element)
    bottom_up
  end
  
  # @return Integer
  def peek
    @data[0]
  end

  # @return Integer
  def poll
    if size == 0
      return nil
    elsif size == 1
      return @data.pop
    else
      max = @data[0]
      @data[0] = @data.pop
      top_down
      return max
    end
  end
  
  # @return Integer
  def size
    @data.size
  end

  private

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end

  
  def bottom_up
    idx = size - 1
    while(has_parent?(idx))
      parent_idx = parent_idx(idx)
      if @data[parent_idx] < @data[idx]
        swap(parent_idx, idx)
        idx = parent_idx
      else
        return
      end
    end
  end
  
  def top_down
    idx = 0
    while (has_child?(idx))
      a = left_child_idx(idx)
      b = right_child_idx(idx)
      if @data[b].nil?
        c = a
      else
        c = @data[a] >= @data[b] ? a : b
      end
      if @data[idx] < @data[c]
        swap(idx, c)
        idx = c
      else
        return
      end
    end
  end
  

  # @param Integer
  # @return Integer
  def parent_idx(idx)
    (idx - (idx.even? ? 2 : 1)) / 2
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

  def has_parent?(idx)
    idx > 0
  end
end


n,m=gets.split(' ').map{|i| i.to_i}
matrix = []
n.times do 
  job=gets.split(' ').map{|i| i.to_i}
  if matrix[job[0]].nil?
    matrix[job[0]]=PriorityQueue.new([job[1]])
  else
    matrix[job[0]].add(job[1])
  end
end

total=0
(0...m).each do |i|
  temp_days=0
  temp_wage=0
  (m-i).downto(0) do |j|
    if not matrix[j].nil? and matrix[j].size>0 and temp_wage < matrix[j].peek
      temp_days=j
      temp_wage=matrix[j].peek
    end
  end
  if temp_days != 0
    total+=temp_wage
    matrix[temp_days].poll
  end
end
puts total
