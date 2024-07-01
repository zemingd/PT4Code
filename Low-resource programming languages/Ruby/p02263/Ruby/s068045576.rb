class Stack
  def initialize
    @arr = []
  end

  def push(x)
    @arr.push(x)
  end

  def pop
    @arr.pop
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