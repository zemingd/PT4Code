def bubblesort(a)
  c = 0
  flag = 1
  while flag > 0
    flag = 0
    (a.size - 1).times do |j|
      if a[j] > a[j + 1]
        a[j], a[j + 1] = a[j + 1], a[j]
        flag = 1
        c += 1
      end
    end
  end
  [a, c]
end
gets
a, b = bubblesort(gets.split.map &:to_i)
puts "#{a.join(' ')}\n#{b}"