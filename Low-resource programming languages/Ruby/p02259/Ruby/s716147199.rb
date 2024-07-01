def bubble_sort(a, n)
  swap_count = 0
  exists_counter = true
  while exists_counter
    exists_counter = false
    (n - 1).downto(1).each {|j|
      k = j - 1
      if a[j] < a[k]
        tmp = a[j]
        a[j] = a[k]
        a[k] = tmp
        swap_count += 1
        exists_counter = true
      end
    }
  end
  return a, swap_count
end

n = gets.to_i
a, swap_count = bubble_sort gets.split(" ").map(&:to_i), n
puts a.join(" ")
puts swap_count