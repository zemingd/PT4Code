def is_operator(operator)
  return ['+', '-', '*'].include?(operator)
end

def calc(operator, o1, o2)
  n1, n2 = o1.to_i, o2.to_i
  if (operator == '+') then
    return n1 + n2
  elsif (operator == '-') then
    return n1 - n2
  elsif (operator == '*') then
    return n1 * n2
  else
    raise "unknown operator: #{operator}"
  end
end


array = gets.split(' ')

while (array.size > 1) do
  index = 0
  while (index < array.size) do
    if (is_operator(array[index])) then
        calculated = calc(array[index], array[index-2], array[index-1])
        array[index-2, 3] = calculated
        break
    end
    index += 1
  end
end

puts array