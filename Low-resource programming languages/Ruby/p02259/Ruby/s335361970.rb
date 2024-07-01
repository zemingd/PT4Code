# bubble sort

def bubble_sort! size, target_array
  count = 0
  swapped = true
  while swapped do
    swapped = false
    (size - 1).downto(1) do |i|
      if target_array[i] < target_array[i - 1]
        target_array[i], target_array[i - 1] = target_array[i - 1], target_array[i]
        swapped = true
        count += 1
      end
    end
  end
  count
end


size = STDIN.gets.chomp.to_i
target_array = STDIN.gets.chomp.split(' ').map{|n|n.to_i}

count = bubble_sort!(size, target_array)
puts target_array.join ' '
puts count