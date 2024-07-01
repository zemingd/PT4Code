def action_handler(a_array, b_array, c_array)
  result = 0
  current_number = 0
  for i in 0..a_array.size - 1
    row = a_array[i] - 1
    result += b_array[row]
    if current_number != 0 && (a_array[i] - current_number) == 1
      result += c_array[current_number - 1]
    end
    current_number = a_array[i]
  end
  return result
end

n = gets.to_i
a_array = gets.chop.split.map(&:to_i)
b_array = gets.chop.split.map(&:to_i)
c_array = gets.chop.split.map(&:to_i)

print action_handler(a_array, b_array, c_array)
