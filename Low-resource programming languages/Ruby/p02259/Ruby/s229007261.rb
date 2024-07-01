N = gets.to_i
A = gets.split(" ").map(&:to_i)
change_times = 0
def bubleSort(a, n, change_times)
  flag = 1
  while flag == 1
    flag = 0
    for j in (1..n-1).to_a.reverse
      if a[j] < a[j-1]
        karinotoko = a[j]
        a[j] = a[j-1]
        a[j-1] = karinotoko
        flag = 1
        change_times += 1
      end
    end
  end
  return [change_times, a]
end

change_times, sortedA = bubleSort(A, N, change_times)
puts sortedA.join(" ")
puts change_times
