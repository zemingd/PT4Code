def bubbleSort(a, n)
  flag = true
  cnt = 0
  while flag
    flag = false
    (1..n-1).reverse_each do |j|
      if a[j] < a[j-1]
        tmp = a[j]
        a[j] = a[j-1]
        a[j-1] = tmp
        flag = true
        cnt += 1
      end
    end
  end
  puts a.join(' ')
  puts cnt
end

n = gets.to_i
a = gets.split.map(&:to_i)
bubbleSort(a, n)
