seq = gets.split(" ")

# Initial stack
stack = []

seq.each{|elm|
  # elm is a number
  if elm.match(/^(\d+)$/)
    num = elm.to_i
    stack.push(num)
  # elm is an operator
  elsif ['+', '-', "*"].include?(elm)
    op = elm
    n2 = stack.pop
    n1 = stack.pop
    case op
    when '+'
      stack.push(n1 + n2)
    when '-'
      stack.push(n1 - n2)
    when '*'
      stack.push(n1 * n2)
    end
  end
}

# Get answer
answer = stack[0]
puts(answer)

