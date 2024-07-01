def bubble_sort(a)
  i = 0
  n = a.length
  flag = true
  sw = 0
  while flag do
    flag = false
    j = n - 1
    while j > i do
      if a[j] < a[j - 1]
        t = a[j]
        a[j] = a[j - 1]
        a[j - 1] = t
        flag = true
        sw += 1
      end
      j -= 1
    end
    i += 1
  end
  i = 0
  while i < n do
    print " " if i > 0
    print a[i]
    i += 1
  end
  puts ""
  puts sw
end

n = gets.to_i
a = gets.split.map(&:to_i)

bubble_sort(a)

