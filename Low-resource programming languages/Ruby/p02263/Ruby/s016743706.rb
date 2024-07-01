class Stack
  attr_accessor :top, :array, :max

  def initialize(size)
    @top = 0
    @array = Array.new(size)
    @max = size - 1
  end

  def push(data)
    raise "is full" if is_full?
    @top += 1
    array[top] = data
  end

  def pop
    raise "is empty" if is_empty?
    @top -= 1
    array[top + 1]
  end

  def is_full?
    return top >= max
  end

  def is_empty?
    return top == 0
  end

  def last
    array[top]
  end
end

class String
  def str_int?
    Integer(self)
  rescue
    return false
  end
end

data = gets.split(' ')
stack = Stack.new(data.size)

data.each do |d|
  if d.str_int?
    stack.push(d.to_i)
  else
    second = stack.pop
    first = stack.pop
    result = first.send(d, second)
    stack.push(result)
  end
end

puts stack.last

