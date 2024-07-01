n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
def bubbleSort(a, n)
  res = 0
  flag = 1
  while flag == 1
    flag = 0
    (n-1).downto(1) do |j|
      if a[j] < a[j-1]
        a[j], a[j-1] = a[j-1], a[j]
        flag = 1
        res += 1
      end
    end
  end
  puts a.join(" ")
  puts res
end

bubbleSort(a, n)