class PriorityQueue
  attr_accessor :data, :size

  def initialize(array = [])
    @data = []
    array.each { |a| push(a) }
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
    ret = @data[0]
    x = @data[-1]
    current = 0
    while have_child?(current)
      a = left_child(current)
      b = right_child(current)
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
    @data[0]
  end

  def empty?
    @data.empty?
  end

  private
  def parent(num)
    (num - 1) / 2
  end

  def left_child(num)
    num * 2 + 1
  end

  def right_child(num)
    num * 2 + 2
  end

  def have_child?(num)
    left_child(num) < @data.size - 1
  end
end


N, M = gets.chomp.split.map(&:to_i)
jobs = []
N.times { jobs.push(gets.chomp.split.map(&:to_i)) }

jobs.sort! { |a, b| b[0] <=> a[0] }

que = PriorityQueue.new

N.times do |i|
  que.push(jobs[i][1])
  que.pop if que.size > M - jobs[i][0] + 1
end

ans = 0
que.size.times do
  a = que.pop
  ans += a
end

puts ans 
