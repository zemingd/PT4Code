n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

def bubble_sort(arr, n)
  swap_times = 0
  flag = true
  i = 0
  while flag && i < n - 1
    flag = false
    j = n - 1
    while j >= i + 1
      if arr[j] < arr[j - 1]
        swap_times += 1
        tmp = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = tmp
        flag = true
      end
      j -= 1
    end
    i += 1
  end
  print "#{arr.join(' ')}\n#{swap_times}\n"
end

bubble_sort(arr, n)

