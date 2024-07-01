class Stack
  def initialize
    @arr = []
    @top = 0
  end

  def push(x)
    @arr[@top] = x
    @top = @top + 1
  end

  def pop
    x = @arr[@top - 1]
    @top = @top - 1
    x
  end
end

def poland(arr)
  stack = Stack.new
  for s in arr
    if s == '+' then
      b = stack.pop
      a = stack.pop
      c = a + b
      stack.push(c)
    elsif s == '-' then
      b = stack.pop
      a = stack.pop
      c = a - b
      stack.push(c)
    elsif s == '*' then
      b = stack.pop
      a = stack.pop
      c = a * b
      stack.push(c)
    else
      stack.push(s.to_i)
    end
  end
  puts stack.pop
end

arr = STDIN.gets.split(' ')
poland(arr)