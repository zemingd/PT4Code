n = gets.to_i
a = gets.chomp.split.map(&:to_i)

def bubble_sort(ary,num)
  flag = 1
  times = 0
  while flag == 1
    flag = 0
    for j in 1..num-1
      if ary[num-j] < ary[num-j-1]
        i = ary[num-j-1]
        ary[num-j-1] = ary[num-j]
        ary[num-j] = i
        flag = 1
        times += 1
      end
    end
  end
  puts ary.join(" ")
  puts times
end

bubble_sort(a,n)