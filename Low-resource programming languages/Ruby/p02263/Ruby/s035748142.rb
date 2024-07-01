class Stack
  attr_accessor :stack, :max, :top
  def initialize()
    @stack = []
    @max   = 1000
    @top   = 0
  end

  def isFull?()
    return true if @top == @max - 1

    return false
  end
  
  def isEmpty?()
    return true if @top == 0

    return false
  end
  
  def push(x)
    if isFull? then
      puts "stack is full!"
      return -1
    end
    stack[top] = x
    @top += 1
  end
  
  def pop()
    if isEmpty? then
      puts "stack is empty!"
      return -1
    end
    @top -= 1
    ret = stack[top]
    stack[top] = nil
    return ret
  end
end
  
line = gets.chop.split
stack = Stack.new
line.each do |s|
  if s == '+'
    a = stack.pop()
    b = stack.pop()
    stack.push(a + b)
  elsif s == '-'
    a = stack.pop()
    b = stack.pop()
    stack.push(b - a)
  elsif s == '*'
    a = stack.pop()
    b = stack.pop()
    stack.push(a * b)
  else
    stack.push(s.to_i)
  end
end

puts stack.pop()
  

