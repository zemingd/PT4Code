def bubble_sort(array)
  times = 0
  (0...array.size).each do |i|
    (i + 1...array.size).reverse_each do |j|
      if array[j] < array[j - 1]
        times += 1
        array[j], array[j - 1] = array[j - 1], array[j]
      end
    end
  end
  [array, times]
end
n = gets.to_i
s = gets.split.map(&:to_i)
array, times = bubble_sort(s)
puts array.join(' ')
puts times