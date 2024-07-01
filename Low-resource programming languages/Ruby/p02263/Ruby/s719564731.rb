class Stack < Array
  attr_accessor :top
  def initialize(size)
    @top = 0
    super(size)
  end
  def pop
    @top -= 1
    return self[@top+1]
  end

  def push(x)
    @top += 1
    self[@top] = x
  end
end

input = gets.split(' ')
stack = Stack.new(1000)
input.each do |i|
  if i == '+'
    a = stack.pop
    b = stack.pop
    stack.push(a+b)
  elsif i == '-'
    a = stack.pop
    b = stack.pop
    stack.push(b-a)
  elsif i == '*'
    a = stack.pop
    b = stack.pop
    stack.push(a*b)
  else
    stack.push(i.to_i)
  end
end
puts stack.pop