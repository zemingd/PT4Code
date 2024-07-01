def swap(array, n1, n2)
  tmp = array[n2]
  array[n2] = array[n1]
  array[n1] = tmp
end

def bubble_sort(array)
  count = 0
  for i1 in 0...array.size do
    for i2 in i1...array.size-1 do
      index = array.size - 1 - i2 + i1
      if (array[index] < array[index-1]) then
        swap(array, index, index-1)
        count += 1
      end
    end
  end
  return count
end

n = gets.strip.to_i
array = gets.split(' ').map(&:to_i)
swap_count = bubble_sort(array)
puts array.join(' ')
puts swap_count