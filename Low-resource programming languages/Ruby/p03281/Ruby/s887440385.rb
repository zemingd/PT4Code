# abc106 B
class Integer
  def divisor_list
    require 'prime'
    list = []
    d = ([1] + prime_division.flat_map { |x,n| [x] * n })
    [true, false].repeated_permutation(d.size) do |arr|
      r = 1
      arr.each_with_index do |a, i|
        r *= d[i] if a
      end
      list << r
    end
    list.uniq
  end
end

n = gets.to_i
cnt = 0
1.upto(n) do |i|
  next if i.even?

  cnt += 1 if i.divisor_list.size == 8
end
p cnt

