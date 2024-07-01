arr = gets.chomp.split(" ")

operator = ['+', '-', '*']
stack = []
num = 0

arr.each do |val|
  if operator.include?(val)
    right = stack.pop.to_i
    left = stack.pop.to_i
    result = case val
             when '+'
               left + right
             when '-'
               left - right
             when '*'
               left * right
             end
    stack.push(result)
  else
    stack.push(val)
  end
end

puts stack.pop
