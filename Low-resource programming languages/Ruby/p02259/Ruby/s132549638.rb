def bubbleSort(arr)
  i = arr.size - 1
  x = 0
  n = 0
  while i >= x
    j = arr.size - 1
    while j >= 1
      if arr[j] < arr[j - 1] then
        x = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = x
        n = n + 1
      end
      j = j - 1
    end
    x = x + 1
  end
  puts arr.join(' ')
  puts n
end

n = STDIN.gets.to_i
arr = STDIN.gets.split(' ').map{|x| x.to_i}
bubbleSort(arr)