# 3_3_bubblesort
# ALDS_1_2_A: Bubble Sort
N = gets.to_i
a = gets.split.map(&:to_i)
# N = 5
# a = [5,3,2,4,1]

def bobble_sort(n,a)
  flag = true
  count = 0
  while flag
    flag = false
    (n-1).step(1,-1) do |j|
      if a[j] < a[j-1]
        a[j] , a[j-1] = a[j-1], a[j]
        flag = true
        count += 1
      end
    end
  end
  puts a.join(' ')
  puts count
end
bobble_sort(N,a)

