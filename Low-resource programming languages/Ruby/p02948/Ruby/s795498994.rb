class PriorityQueue
  attr_accessor :data, :size

  def initialize(array = [])
    @data=[]
    array.each {|a| push(a) }
  end

  def push(element)
    current = @data.size
    while current > 0
      p = parent(current)
      break if @data[p] <= element
      @data[current] = @data[p]
      current = p
    end
    @data[current] = element
  end

  def pop
    ret = @data.first
    x = @data.last
    current = 0
    while have_child?(current)
      a = left_child_index(current)
      b = right_child_index(current)
      a = b if b < @data.size - 1 && @data[b] < @data[a]
      break if @data[a] >= x
      @data[current] = @data[a]
      current = a
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
    (num-1)/2
  end

  def left_child_index(num)
    2*num+1
  end

  def right_child_index(num)
    2*num+2
  end

  def have_child?(index)
    left_child_index(index) < @data.size
  end
end

n, m = gets.strip.split.map(&:to_i)
ab = readlines.map {|line| line.strip.split.map(&:to_i) }.sort!.reverse!

pq = PriorityQueue.new

n.times do |i|
  pq.push(ab[i].last)
  pq.pop if pq.size > m - ab[i].first + 1
end

p pq.data.inject(:+).to_i

