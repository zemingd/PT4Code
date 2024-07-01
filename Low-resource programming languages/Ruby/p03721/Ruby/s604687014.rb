require 'forwardable'

class SumArray
  extend Forwardable
  
  def_delegator :@elements, :each

  def initialize
    @elements = []
  end
  
  def push(val, count)
    if @elements.empty?
      @elements << [val, count]
    else
      right = [*@elements.each_with_index].bsearch{ |x, _| x[0] > val }
      if right == nil
        @elements << [val, count]
      elsif right.last > 0
        if @elements[right.last - 1][0] == val
          @elements[right.last - 1][1] += count
        else
          @elements.insert(index, [val, count])
        end
      else
        @elements.insert(index, [val, count])
      end
    end
  end
  

  def debug
    pp @elements
  end
end

n, k = gets.split.map(&:to_i)
sum_array = SumArray.new
n.times do
  a, b = gets.split.map(&:to_i)
  sum_array.push(a, b)
end

sum_array.each do |x|
  k -= x[1]
  if k <= 0
    puts x[0]
    exit
  end
end

