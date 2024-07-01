

def push(x, stack)
  if x == "+"
    result = stack[-1] + stack[-2]
    stack.slice!(-2..-1)
    stack.push(result)
  elsif x == "-"
      result = stack[-2] - stack[-1]
      stack.slice!(-2..-1)
      stack.push(result)
    elsif x == "*"
      result = stack[-1] * stack[-2]
      stack.slice!(-2..-1)
      stack.push(result)
    else
      x = x.to_i
      stack.push(x)
    end
    return stack
  end

stack  = []
input_values = gets.chomp.split
length = input_values.length
for i in 0..(length-1)
  push(input_values[i], stack)
end

puts stack