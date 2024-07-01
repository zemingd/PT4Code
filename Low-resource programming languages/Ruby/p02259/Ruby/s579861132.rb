@cnt = 0
def bubble_sort(array)
	length = array.length
  for i in 1..length do
    for j in 1..(length-i) do
      if array[j - 1] > array[j]
        t = array[j]
        array[j] = array[j - 1]
        array[j - 1] = t
				@cnt += 1
      end
    end
  end
	return array
end
size = gets.chomp.to_i
input_values = gets.chomp.split

bubble_sort(input_values)
puts input_values.join(' ')
puts @cnt