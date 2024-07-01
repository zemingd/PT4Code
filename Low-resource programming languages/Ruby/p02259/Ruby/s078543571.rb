def bubble_sort(a, n)
  flag = true
  count = 0

  while flag
    flag = false

    (N - 1).downto(1) do |i|
      if a[i] < a[i - 1]
        a[i], a[i - 1] = a[i - 1], a[i]
        count += 1
        flag = true
      end
    end
  end

  puts a.join(' ')
  puts count
end

N = gets.to_i
A = gets.split.map(&:to_i)

bubble_sort(A, N)