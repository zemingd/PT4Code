class Stack
  def initialize(max)
    @top = 0
    @max = max
    @s = Array.new(max)
  end

  def is_empty?
    @top == 0
  end

  def is_full?
    @top >= (@max -1)
  end

  def push(x)
    if is_full?
      raise "オーバーフローしました"
    end
    @top += 1
    @s[@top] = x
  end

  def pop
    if is_empty?
      raise "アンダーフローしました"
    end
    @top -=1
    @s[@top+1]
  end

  # def dump
  #   puts @s
  # end

  def answer
    @s[0]
  end
end

def calc_reverse_polish_notation(stack, x)
  if x == "+"
    a = stack.pop()
    b = stack.pop()
    stack.push(b + a)
  elsif x == "-"
    a = stack.pop()
    b = stack.pop()
    stack.push(b - a)
  elsif x == "*"
    a = stack.pop()
    b = stack.pop()
    stack.push(b * a)
  else
    x = x.to_i
    stack.push(x)
  end
end

stack = Stack.new(200)
arr = gets.split
arr.each do |x|
  calc_reverse_polish_notation(stack, x)
  # stack.dump
end
puts stack.pop
