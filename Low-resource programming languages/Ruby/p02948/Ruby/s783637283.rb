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
      min = @data[0]
      @data[0] = @data.pop
      top_down
      return min
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
      if @data[parent_idx] > @data[idx]
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
        c = @data[a] <= @data[b] ? a : b
      end
      if @data[idx] > @data[c]
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
E=1000000

N,M=gets.split.map(&:to_i)
job=Array.new(10**5+1){Array.new}
N.times do
    i,j=gets.split.map(&:to_i)
    job[i] << j
end

cnt=0
rem=PriorityQueue.new(job[1].map{|i|E-i})
e=rem.poll
cnt+=E-e if !e.nil?
for i in 2..M
    job[i].each do |j|
        rem.add(E-j)
    end
    e=rem.poll
    cnt+=E-e if !e.nil?
end
puts cnt
