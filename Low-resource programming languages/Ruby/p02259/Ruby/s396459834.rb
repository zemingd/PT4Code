class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

def bubble_sort(array)
  isSorted = false
  count = 0
  index = 0
  until isSorted do
    swaped = false
    (array.length - 1).downto(index) do |comp_index|
      break if comp_index.zero?
      if array[comp_index] < array[comp_index - 1]
        array.swap! comp_index, (comp_index - 1)
        count += 1
        swaped = true
      end
    end
    isSorted = true unless swaped
    index += 1
  end
  [array, count]
end

n = gets.to_i
array = gets.split(' ').map(&:to_i)
result_array, count = bubble_sort array
puts result_array.join ' '
puts count

