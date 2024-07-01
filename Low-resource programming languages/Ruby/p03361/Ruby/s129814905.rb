def action_handler(array)
  array.each_with_index do |items, items_index|
    items.each_with_index do |str, i|
      if str == "#"
        if variable_checker(array, items_index, items, i) == false
          return false
        end
      end
    end
  end
  return true
end

def variable_checker(array, items_index, items, i)
  result = []
  #top
  if array[items_index - 1] != nil
    top_item = array[items_index - 1][i]
    result.push(top_item == "#")
  end
  #left
  if items[i - 1] != nil
    left_item = items[i - 1]
    result.push(left_item == "#")
  end
  #right
  if items[i + 1]  != nil
    right_item = items[i + 1]
    result.push(right_item == "#")
  end
  #bottom
  if array[items_index + 1] != nil
    bottom_item = array[items_index + 1][i]
    result.push(bottom_item == "#")
  end

  true_results = result.select {|n| n == true}
  return true if true_results.size != 0
  return false
end

input = gets.chop.split.map(&:to_i)
#入力:1234
#    1234 -> [["1", "2", "3", "4"], ["1", "2", "3", "4"], ["1", "2", "3", "4"]]
#    1234
lines = []
while line = gets
    lines << line.chop.split('').map(&:to_s)
end

print action_handler(lines) ? 'Yes' : 'No'
