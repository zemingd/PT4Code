class PriorityQueue
  def initialize; @buf = []; end
  def parent_of(n); (n - 1) / 2; end
  def left_child_of(n); n * 2 + 1; end
  def to_s; @buf.to_s; end

  def push(x)
    n = @buf.size
    @buf.push(x)
    loop {
      break if n == 0
      m = parent_of(n)
      @buf[n], @buf[m] = [@buf[m], @buf[n]].minmax
      n = m
    }
  end

  def pop
    return @buf.pop if @buf.size <= 1
    ret, @buf[0] = @buf[0], @buf.pop
    n = 0
    loop {
      m = left_child_of(n)
      break unless m < @buf.size
      m += 1 if m + 1 < @buf.size && (@buf[m] <=> @buf[m + 1]) < 0
      break if (@buf[n] <=> @buf[m]) > 0
      @buf[n], @buf[m] = @buf[m], @buf[n]
      n = m
    }
    ret
  end
end

require 'set'

def main
  x, y, z, k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  b = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  a.sort!; b.sort!; c.sort!
  pq = PriorityQueue.new
  flag = Set.new
  ai = a.size - 1; bi = b.size - 1; ci = c.size - 1
  pq.push([a[ai] + b[bi] + c[ci], ai, bi, ci])
  flag.add([ai, bi, ci])
  k.times {|i|
    v, ai, bi, ci = pq.pop
    puts v
    pq.push([a[ai - 1] + b[bi] + c[ci], ai - 1, bi, ci]) if ai >= 1 && !flag.include?([ai - 1, bi, ci])
    flag.add([ai - 1, bi, ci])
    pq.push([a[ai] + b[bi - 1] + c[ci], ai, bi - 1, ci]) if bi >= 1 && !flag.include?([ai, bi - 1, ci])
    flag.add([ai, bi - 1, ci])
    pq.push([a[ai] + b[bi] + c[ci - 1], ai, bi, ci - 1]) if ci >= 1 && !flag.include?([ai, bi, ci - 1])
    flag.add([ai, bi, ci - 1])
  }
end

main