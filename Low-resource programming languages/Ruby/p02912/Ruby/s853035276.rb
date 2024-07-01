class PriorityQueue
  HEAP_TYPES = %i[min max].freeze

  # @param array [Array<Array<Integer, Any>|Integer>]
  # @param heap_type [Symbol]
  def initialize(array = nil, heap_type: :min)
    raise ArgumentError, "heap type is invalid: #{heap_type}" unless HEAP_TYPES.include?(heap_type)
    raise ArgumentError, "array is invalid: #{array}" unless valid_array?(array)

    @heap = convert_to_nodes(array)
    @heap_type = heap_type

    build_heap! unless @heap.empty?
  end

  # @param value [Integer | Array<Integer, Any>]
  def heap_push(value)
    node = value.is_a?(Array) ? Node.new(value[0], value[(1..)]) : Node.new(value, nil)
    @heap << node

    current = @heap.size - 1
    parent = (current - 1) / 2
    while parent >= 0
      break if @heap_type == :min && @heap[parent].key < @heap[current].key
      break if @heap_type == :max && @heap[parent].key > @heap[current].key

      @heap[current], @heap[parent] = @heap[parent], @heap[current]
      parent, current = (current - 1) / 2, parent
    end
  end

  # @return [Integer | Array<Integer, Any>]
  def heap_pop
    return if @heap.empty?

    res = @heap.shift

    unless @heap.empty?
      @heap.unshift(@heap.pop)
      heapify!(0) unless @heap.empty?
    end

    res.value.nil? ? res.key : res.to_a.flatten
  end

  def length
    @heap.size
  end
  alias size length

  private

  Node = Struct.new(:key, :value) do
    include Comparable

    def <=>(other)
      return unless other
      return if key.nil? || other&.key.nil?

      case key - other.key
      when proc { |n| n < 0 }; -1
      when proc { |n| n > 0 }; 1
      else; 0
      end
    end
  end

  def build_heap!
    (@heap.size/2).downto(0) { |i| heapify!(i) }
  end

  def heapify!(current)
    @heap_type == :min ? min_heapify!(current) : max_heapify!(current)
  end

  def min_heapify!(current)
    left = current*2+1
    right = current*2+2
    smallest_value = [@heap[current].key, @heap[left]&.key, @heap[right]&.key].compact.min

    return if smallest_value == @heap[current].key

    swap_idx = smallest_value == @heap[left].key ? left : right
    @heap[swap_idx], @heap[current] = @heap[current], @heap[swap_idx]
    min_heapify!(swap_idx)
  end

  def max_heapify!(current)
    left = current*2+1
    right = current*2+2
    largest_value = [@heap[current].key, @heap[left]&.key, @heap[right]&.key].compact.max

    return if largest_value == @heap[current].key

    swap_idx = largest_value == @heap[left].key ? left : right
    @heap[swap_idx], @heap[current] = @heap[current], @heap[swap_idx]
    max_heapify!(swap_idx)
  end

  def valid_array?(array)
    return true if array.nil?
    return false unless array.is_a?(Array)

    array.all? { |el| el.is_a?(Array) && el[0].is_a?(Integer) } ||
      array.all? { |el| el.is_a?(Integer) }
  end

  def convert_to_nodes(array)
    return [] if array.nil? || array.empty?

    if array.all? { |a| a.is_a?(Array) }
      array.map { |a| Node.new(a[0], a[(1..)]) }
    else
      array.map { |n| Node.new(n) }
    end
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
pq = PriorityQueue.new(a, heap_type: :max)

m.times do
  n = pq.heap_pop
  pq.heap_push(n/2)
end

res = 0
while pq.length > 0
  res += pq.heap_pop
end

puts res
