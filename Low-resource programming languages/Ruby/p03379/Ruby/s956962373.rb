require 'benchmark'
N = gets.to_i
x_list = gets.split.map(&:to_i)

class Array
  def qsort
    return self if self.size <= 1
    mark = self[0]
    right = Array.new
    left = Array.new
    (1..self.size-1).each do |i|
      if self[i] <= mark
        left.push(self[i])
      else
        right.push(self[i])
      end
    end
    left = left.qsort 
    right = right.qsort
    return left + [mark] + right
  end
end

for i in 0..N-1 do
    tmp_list = Marshal.load(Marshal.dump(x_list))
    tmp_list.slice!(i)
    sorted_list = tmp_list.qsort
    puts(sorted_list[(sorted_list.size)/2])
end