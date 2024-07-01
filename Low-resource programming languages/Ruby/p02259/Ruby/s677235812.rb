n = gets().to_i
arr = gets().split.map(&:to_i)

def bubble_sort(n, arr)
  cnt = 0
  for i in 0..(n-1)
    for j in (n-1).downto(i+1)
      if arr[j] < arr[j-1]
        arr[j], arr[j-1] = arr[j-1], arr[j]
        cnt += 1
      end
    end
  end
  return arr, cnt
end

arr, cnt = bubble_sort(n, arr)
puts arr.join(' ')
puts cnt
