def bubble_sort(arr)
  n = arr.length
  c = 0
  for i in 0..n - 1
    j = n - 1
    while j > i
      if arr[j-1] > arr[j]
        arr[j-1],arr[j] = arr[j],arr[j-1]
        c += 1
      end
      j -= 1
    end
  end
  [arr, c]
end

gets
a = gets.split.map(&:to_i)

arr,c=bubble_sort(a)
puts arr * ' '
puts c