arr = gets.chomp.split(' ')

class Stack
  attr_accessor :max, :stack, :top

  def initialize(size)
    @max = size
    @stack = Array.new(size)
    @top = 0
  end

  def pop
    @top -= 1
    return @stack[@top + 1]
  end

  def push(x)
    @top += 1
    @stack[@top] = x
  end

  def isEmpty
    return @top == 0
  end

  def isFull
    return @top >= @max - 1
  end
end

s = Stack.new(1000)
arr.each do |obj|
  if obj == '+'
    a = s.pop
    b = s.pop
    s.push(b + a)
  elsif obj == '-'
    a = s.pop
    b = s.pop
    s.push(b - a)
  elsif obj == '*'
    a = s.pop
    b = s.pop
    s.push(b * a)
  else
    s.push(obj.to_i)
  end
end

print "#{s.stack[s.top]}\n"

