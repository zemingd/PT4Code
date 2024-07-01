def bubble_sort(arr, n)
  result = arr.dup
  flag = true
  count = 0
  while flag do
    flag = false

    j = n - 1
    while j > 0 do
      if result[j] < result[j - 1]
        tmp = result[j]
        result[j] = result[j - 1]
        result[j - 1] = tmp
        
        flag = true
        count += 1
      end

      j -= 1
    end
  end

  [result, count]
end

n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)

result, count = bubble_sort(arr, n)

puts result.join(' ')
puts count
