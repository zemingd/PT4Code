def bubble_sort(arr)
  count = 0
  changed = true

  while changed
    changed = false
    (arr.size - 1).downto(1) do |i|
      if arr[i] < arr[i-1]
        arr[i], arr[i-1] = arr[i-1], arr[i]
        changed = true
        count += 1
      end
    end
  end

  count
end

n = gets.to_i
arr = gets.split.map(&:to_i)
count = bubble_sort(arr)
puts arr.join("\s")
puts count