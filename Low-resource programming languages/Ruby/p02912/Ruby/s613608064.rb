
class Array
  def quicksort
    return self if self.size <= 1
    pivot = self[0]
    right = Array.new
    left = Array.new
    (1..self.size-1).each do |i|
      if self[i] <= pivot
        left.push(self[i])
      else
        right.push(self[i])
      end
    end
    left = left.quicksort
    right = right.quicksort
    return left + [pivot] + right
  end
  # もっとRubyっぽい書き方
  def quick_sort
    return self if self.length <= 1
    pivot = pop
    left, right = partition { |e| e < pivot }
    push pivot
    left.quick_sort + [pivot] + right.quick_sort
  end

end

def binary_search(array, target)

  head = 0
  tail = array.count - 1

  while head <= tail

    center = (head + tail) / 2

    if array[center] == target
      return center
    elsif array[center] < target
      head = center + 1
    else
      tail = center - 1
    end

  end

  if head==center+1 then
    return head
  end
  return tail

end



n,m = gets.chomp.split(" ").map{|i|i=i.to_i}
a = gets.chomp.split(" ").map{|i|i=i.to_i}

a_sum=0
a.each do|elm|
  a_sum += elm
end
a=a.quick_sort
#pp a


m.times do|i|
  tmp=a[a.length-1]/2
  pos = binary_search(a,tmp)
  #pp pos
  a.insert(pos,tmp)
  #pp a
  a = a.quick_sort
  
  a.delete_at(a.length-1)
  #pp a
  #puts "now i = #{i}, a = #{a}"
end
#pp a
all=0
a.each do|elm|
  all += elm
end
puts all