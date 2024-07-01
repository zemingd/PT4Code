def bubbleSort(a, n)
  flag = 0
  for i in 0...n
    for j in 1..(n-i-1)
      if a[n-j] < a[n-j-1]
        a[n-j], a[n-j-1] = a[n-j-1], a[n-j]
        flag += 1
      end
    end
  end
  puts a.join(' '), flag
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)
bubbleSort(a, n)

