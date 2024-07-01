def bubbleSort(a, n)
  flag = 1
  count = 0;
  while flag == 1 do
    flag = 0
    (n-1).step(1,-1){|j|
      if a[j] < a[j-1] then
        a[j], a[j-1] = a[j-1], a[j]
        flag = 1
        count += 1
      end
    }
  end
  puts a.join(" ")
  puts count
end

n = gets.to_i
a = gets.split.map(&:to_i)
bubbleSort(a,n)