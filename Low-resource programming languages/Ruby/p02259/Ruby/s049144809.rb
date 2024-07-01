def bubbleSort(arr)
  i = 0
  n = 0
  for i in 0..(arr.size - 1)
    j = arr.size - 1
    for j in (arr.size - 1)..(i+1)
      if arr[j] < arr[j - 1] then
        x = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = x
        n = n + 1
      end
    end
  end
  puts arr.join(' ')
  puts n
end

n = STDIN.gets.to_i
arr = STDIN.gets.split(' ').map{|x| x.to_i}
bubbleSort(arr)