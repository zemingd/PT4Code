class PriorityQueue

  def initialize(capacity, &compare)
    @items = Array.new(capacity)
    @size = 0

    if block_given?
      @compare_proc = compare
    else
      @compare_proc = Proc.new { |a, b| a > b }
    end
  end

  def push(x)
    n = @size
    @items[n] = x
    @size += 1
    while n != 0
      p = (n - 1) / 2
      if @compare_proc.call(@items[n], @items[p])
        @items[p], @items[n] = @items[n], @items[p]
      end
      n = p
    end
  end

  def pop
    result = @items[0]
    @items[0] = @items[@size - 1]
    @size -= 1

    n = 0
    loop do
      left = 2 * n + 1
      break if left >= @size

      right = left + 1
      if (right < @size) && @compare_proc.call(@items[right], @items[left])
        c = right
      else
        c = left
      end

      break unless @compare_proc.call(@items[c], @items[n])

      @items[n], @items[c] = @items[c], @items[n]
      n = c
    end
    result
  end

  def empty?
    @size == 0
  end

  def size
    @size
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
 
queue = PriorityQueue.new(n)
a.each do |x|
	queue.push x
end
while m > 0
	x = queue.pop
	queue.push x / 2
	m -= 1
end

ans = 0
until queue.empty?
	ans += queue.pop
end
puts ans

