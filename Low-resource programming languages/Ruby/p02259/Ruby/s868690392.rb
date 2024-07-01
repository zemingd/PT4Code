def bubble_sort(a, n)
  flag = true
  cnt = 0
  while flag do
    flag = false
    (n-1).downto(1) do |j|
      if a[j] < a[j-1]
        t = a[j]
        a[j] = a[j-1]
        a[j-1] = t
        flag = true
        cnt += 1
      end
    end
  end
  [a, cnt]
end

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a, num = bubble_sort(a, n)
puts a.join(" ")
puts num




