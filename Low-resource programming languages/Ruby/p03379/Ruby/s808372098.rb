n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

sorted_arr = arr.dup
sorted_arr.sort!

def binary_search(arr, n, key)
  left = 0
  right = n
  while left < right
    mid = (left + right) / 2
    if arr[mid] == key
      return mid
    elsif key < arr[mid]
      right = mid
    else
      left = mid + 1
    end
  end
  return false
end

(0..n-1).each do |i|
  key = arr[i]
  index = binary_search(sorted_arr, n, key)
  if index < n/2
    puts sorted_arr[n/2]
  else
    puts sorted_arr[n/2 - 1]
  end
end
