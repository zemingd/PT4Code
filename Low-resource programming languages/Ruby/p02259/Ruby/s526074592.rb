def bubbleSort(arr)
  n = 0
  for i in 0..(arr.size - 1)
    j = arr.size - 1
    while j >= i + 1
      if arr[j] < arr[j - 1] then
        x = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = x
        n = n + 1
      end
      j = j - 1
    end
  end
  puts arr.join(' ')
  puts n
end

n = STDIN.gets.to_i
arr = STDIN.gets.split(' ').map{|x| x.to_i}
bubbleSort(arr)