length = gets.to_i
arr = gets.split.map(&:to_i)

def bubble_sort(length, arr)
  count = 0
  for i in 0..(length - 2) do
    for j in 0..(length - i -2) do
      if arr[length - j -1] < arr[length - j - 2]
        arr[length - j -1], arr[length - j -2] = arr[length - j -2], arr[length - j -1]
        count += 1
      end
    end
  end
  [arr, count]
end

sorted_arr, count = bubble_sort(length, arr)

puts sorted_arr.join(' ')
puts count
