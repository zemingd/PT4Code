def f
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)
  bubblesort(a, n)
end

def bubblesort(a, n)
  flag = 1
  exchange_counts = 0
  while flag == 1
    flag = 0
    for i in 1..n-1
      j = n-i
      if a[j] < a[j-1]
        a[j-1], a[j] = a[j], a[j-1]
        flag = 1
        exchange_counts += 1
      end
    end
  end
  puts a.join(" ")
  puts exchange_counts
end

f
