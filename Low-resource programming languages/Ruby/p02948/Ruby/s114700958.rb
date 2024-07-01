N, M = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

class PriorityQueue
  def initialize
    @q = [nil]
  end

  def bubble_up(i)
    pi = i / 2
    return if i <= 1 || @q[pi] >= @q[i]
    @q[i], @q[pi] = @q[pi], @q[i]
    bubble_up(pi)
  end

  def add(e)
    @q << e
    bubble_up(@q.size - 1)
  end

  def bubble_down(i)
    ci = i * 2
    return if ci > @q.size - 1
    ci += 1 if ci != @q.size - 1 && @q[ci] < @q[ci + 1]
    return if @q[i] >= @q[ci]
    @q[i], @q[ci] = @q[ci], @q[i]
    bubble_down(ci)
  end

  def pop
    @q[1], @q[-1] = @q[-1], @q[1]
    ret = @q.pop
    bubble_down(1)
    ret
  end
end

pq, ans = PriorityQueue.new, 0
h = ABs.group_by(&:first)
(1 .. M).each do |d|
  h[d].each{|a, b| pq.add(b)} if h[d]
  ans += pq.pop || 0
end
puts ans