N = gets.to_i
A = gets.split.map(&:to_i)

def bubble_sort(a, n)
  count = 0

  loop do
    flag = false

    (n - 1).downto(1) do |i|
      if a[i] < a[i - 1]
        a[i], a[i - 1] = a[i - 1], a[i]
        count += 1
        flag = true
      end
    end

    break unless flag
  end

  puts a.join(' ')
  puts count
end

bubble_sort(A, N)