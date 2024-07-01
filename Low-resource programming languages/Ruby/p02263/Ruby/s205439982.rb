seq = gets.split(" ")

# Operator => Proc
# (this is for extensibility)
OPERATOR_TO_PROC = {
  '+' => ->n1,n2{n1 + n2},
  '-' => ->n1,n2{n1 - n2},
  '*' => ->n1,n2{n1 * n2}
}

# Available operators
OPERATORS = OPERATOR_TO_PROC.keys

# Initial stack
stack = []

seq.each{|elm|
  # elm is a number
  if elm.match(/^(\d+)$/)
    num = elm.to_i
    stack.push(num)
  # elm is an operator
  elsif OPERATORS.include?(elm)
    op = elm
    n2 = stack.pop
    n1 = stack.pop
    # Get result
    res = OPERATOR_TO_PROC[op].call(n1, n2)
    stack.push(res)
  end
}

# Get answer
answer = stack[0]
puts(answer)

