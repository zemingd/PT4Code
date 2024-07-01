_ = gets
a = gets.split.map(&:to_i)

def bubble_sort(a)
  is_reverse = true
  cnt = 0
  while is_reverse 
    is_reverse = false
    0.upto(a.size - 2) do | i |
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        is_reverse = true
        cnt += 1
      end
    end
  end
  return a, cnt
end

a, cnt = bubble_sort(a)
puts a.join(' ')
puts cnt

