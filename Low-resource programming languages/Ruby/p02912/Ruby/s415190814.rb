class PriorityQueue
  attr_accessor :data, :size

  def initialize(array = [])
    @data = []
    array.each { |a| push(a) }
  end

  def push(element)
    current = @data.size
    while current > 0
      p_index = parent(current)
      break if @data[p_index] <= element
      @data[current] = @data[p_index]
      current = p_index
    end
    @data[current] = element
  end

  def pop
    ret = @data.first
    x = @data.last
    current = 0
    while have_child?(current)
      a_index = left_child_index(current)
      b_index = right_child_index(current)
      a_index = b_index if @data[b_index] && @data[b_index] < @data[a_index]
      break if @data[a_index] >= x
      @data[current] = @data[a_index]
      current = a_index
    end
    @data[current] = x
    @data.pop

    ret
  end

  def size
    @data.size
  end

  def front
    @data.first
  end

  def empty?
    @data.empty?
  end

  private

  def parent(num)
    (num - 1) / 2
  end

  def left_child_index(num)
    2 * num + 1
  end

  def right_child_index(num)
    2 * num + 2
  end

  def have_child?(index)
    left_child_index(index) < @data.size
  end
end

n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
pq = PriorityQueue.new(nums.map { |i| -i } )
m.times { pq.push((pq.pop / 2.0).ceil) }
puts -pq.data.inject(:+) 
