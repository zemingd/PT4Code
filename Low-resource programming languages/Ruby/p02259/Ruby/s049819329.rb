$cnt = 0
def bubble_sort(arr, n)
  flag = true
  while flag
    flag = false
    (1..n-1).reverse_each {|i|
      if arr[i] < arr[i-1]
        arr[i], arr[i-1] = arr[i-1], arr[i]
        flag = true
        $cnt += 1
      end
    }
  end
  return arr
end

n = gets.to_i
arr = gets.split.map(&:to_i)
ans = bubble_sort(arr, n)
puts ans.join(" ")
puts $cnt
