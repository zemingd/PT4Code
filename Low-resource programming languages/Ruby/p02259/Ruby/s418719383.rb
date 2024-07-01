n = gets.chomp.to_i
list = gets.chomp.split(' ').map(&:to_i)

def bubble_sort(list)
  flag = 1
  cnt = 0
  while flag == 1
    flag = 0
    (1..(list.length - 1)).reverse_each do |j|
      if list[j-1] > list[j]
        cnt += 1
        v1 = list[j].dup
        v2 = list[j-1].dup
        list[j] = v2
        list[j-1] = v1
        flag = 1
      end
    end
  end

  return list, cnt
end

list, cnt = bubble_sort(list)
puts list.join(' ')
puts cnt

