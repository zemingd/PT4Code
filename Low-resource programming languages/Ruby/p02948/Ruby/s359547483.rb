class PriorityQueue
  attr_reader :elements

  def initialize(array = nil)
    @elements = [nil]
    if array
      array.each{|e| push(e)}
    end
  end

  def push(element)
    @elements << element
    bubble_up(@elements.size - 1)
  end
  alias << push

  def pop
    exchange(1, @elements.size - 1)
    max = @elements.pop
    bubble_down(1)
    max
  end

  private

  def bubble_up(idx)
    parent_idx = idx / 2

    return if idx <= 1
    return if @elements[parent_idx] >= @elements[idx]

    exchange(idx, parent_idx)
    bubble_up(parent_idx)
  end

  def bubble_down(idx)
    child_idx = (idx * 2)

    return if child_idx > @elements.size - 1

    not_the_last_element = child_idx < @elements.size - 1
    left_element = @elements[child_idx]
    right_element = @elements[child_idx + 1]
    child_idx += 1 if not_the_last_element && right_element > left_element

    return if @elements[idx] >= @elements[child_idx]

    exchange(idx, child_idx)
    bubble_down(child_idx)
  end

  def exchange(source, target)
    @elements[source], @elements[target] = @elements[target], @elements[source]
  end
end

#n = gets.chomp.to_i
n, m = gets.chomp.split().map(&:to_i)
hash = {}
n.times do
  a, b = gets.split.map(&:to_i)
  hash[a] ||= []
  hash[a].push b if a <= m
end
#p hash

pq = PriorityQueue.new
ans = 0
1.upto(m).each do |i|
  hash[i].each{|e| pq.push e} if hash.has_key?(i)
  max = pq.pop
  #p [i,max]
  ans += max unless max.nil?
end

puts ans
