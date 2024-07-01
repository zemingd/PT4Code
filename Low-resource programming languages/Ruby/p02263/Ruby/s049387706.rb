input_str = STDIN.gets
input_list = input_str.split(" ")
stack = []

input_list.each do |value|
  case value
  when '+'
    a = stack.pop
    b = stack.pop
    c = a + b
    stack.push c
  when '-'
    a = stack.pop
    b = stack.pop
    c = a - b
    stack.push c
  when '*'
    a = stack.pop
    b = stack.pop
    c = a * b
    stack.push c
  else
    value_int = value.to_i
    stack.push value_int
  end
end

answer = stack.pop
puts answer.to_i

