class PriorityQueue
  attr_reader :size

  def initialize(order: :asc)
    @size = 0
    @nodes = []
    @operator = (order == :asc) ? [:>, :<] : [:<, :>]
  end

  def empty?
    @size.zero?
  end

  def push(node)
    if @nodes[0].nil?
      @nodes[0] = node
    else
      index = size
      @nodes[index] = node

      loop {
        parent = (index - 1) / 2

        if (@nodes[parent].last <=> node.last).public_send(@operator.first, 0)
          @nodes[index], @nodes[parent] = @nodes[parent], @nodes[index]
          index = parent

          break if index.zero?
        else
          break
        end
      }
    end

    @size += 1
  end

  alias_method :<<, :push

  def pop
    node = @nodes.first
    @nodes[0], @nodes[size - 1] = @nodes[size - 1], nil
    index = 0

    loop {
      left = 2 * index + 1
      right = 2 * index + 2

      target = if @nodes[left] && @nodes[right]
                 (@nodes[left].last <=> @nodes[right].last).public_send(@operator.last, 0) ? left : right
               elsif @nodes[left]
                 left
               elsif @nodes[right]
                 right
               else
                 nil
               end

      break if target.nil?

      if (@nodes[target].last <=> @nodes[index].last).public_send(@operator.last, 0)
        @nodes[index], @nodes[target] = @nodes[target], @nodes[index]
        index = target
      else
        break
      end
    }

    @size -= 1
    node.first
  end

  def top
    @nodes.first
  end
end

N, M = gets.split.map(&:to_i)

queries = N.times.map { gets.split.map(&:to_i) }

pque_day = PriorityQueue.new
pque_value = PriorityQueue.new(order: :desc)

queries.each do |q|
  node = [q, q.first]
  pque_day.push(node)
end

ans = 0

1.upto(M) do |m|
  while !pque_day.empty? && pque_day.top.first.first <= m
    e = pque_day.pop
    pque_value.push([e, e.last])
  end

  if !pque_value.empty?
    e = pque_value.pop
    ans += e.last
  end
end

puts ans
