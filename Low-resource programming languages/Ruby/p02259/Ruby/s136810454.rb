def bubble_sort a
  n = a.size
  0.upto(n - 1) do |i|
    (n - 1).downto(i + 1) do |j|
      if a[j] < a[j - 1]
        a[j], a[j - 1] = a[j - 1], a[j]
        yield if block_given?
      end
    end
  end
  a
end

n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
cnt = 0

puts bubble_sort(a) { cnt += 1 }.join(' ')
puts cnt