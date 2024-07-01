def bubble_sort(array, n)
  count = 0
  flag = true
  head = 0

  while flag
    flag = false
    (n-1).downto(head+1) do |i|
      if array[i] < array[i-1]
        flag = true
        array[i], array[i-1] = array[i-1], array[i]
        count += 1
      end
    end
    head += 1
  end
  count
end

def trace(array)
  puts array.join(' ')
end

n = $stdin.gets.chomp.to_i
array = $stdin.gets.chomp.split(' ').map(&:to_i)

count = bubble_sort(array, n)
trace(array)
puts count