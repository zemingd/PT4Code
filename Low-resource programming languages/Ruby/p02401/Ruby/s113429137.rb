def calc(a, b, op)
  return a + b if op == '+'
  return a - b if op == '-'
  return a * b if op == '*'

  a / b if op == '/'
end

def func
  loop do
    a, op, b = gets.split
    break if op == '?'

    a, b = [a, b].map(&:to_i)
    puts calc(a, b, op)
  end
end

func
