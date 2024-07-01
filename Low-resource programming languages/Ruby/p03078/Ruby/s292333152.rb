class FastPriorityQueue
  attr_reader :size

  def initialize
    @size = 0
    @nodes = []
  end

  def empty?
    @size.zero?
  end

  def push(node)
    index = size
    @size += 1

    while index > 0
      parent = (index - 1) / 2

      break if @nodes[parent].last <= node.last

      @nodes[index] = @nodes[parent]
      index = parent
    end

    @nodes[index] = node
  end

  alias_method :<<, :push

  def pop
    node = @nodes.first
    root = @nodes[size - 1]
    @size -= 1
    index = 0

    while index * 2 + 1 < @size
      left = 2 * index + 1
      right = left + 1

      if right < size && @nodes[right].last < @nodes[left].last
        left = right
      end

      break if @nodes[left].last >= root.last

      @nodes[index] = @nodes[left]
      index = left
    end

    @nodes[index] = root
    node
  end

  def top
    @nodes.first
  end
end

X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i).sort.reverse

AB = A.product(B).map { |a, b| a + b }.sort.reverse
pque = FastPriorityQueue.new

C.each_with_index do |c, i|
  v = AB[0] + c
  pque.push([[0, i], -v])
end

K.times do
  (i, j), v = pque.pop
  puts -v

  if i + 1 < AB.size
    nv = AB[i + 1] + C[j]
    pque.push([[i + 1, j], -nv])
  end
end

