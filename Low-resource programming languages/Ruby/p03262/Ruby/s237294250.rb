require 'prime'

class Integer
  def my_divisor_list2
    return [1] if self == 1
    Prime.prime_division(self).map do |e|
      Array.new(e[1]+1).map.with_index do |element, i|
        e[0]**i
      end
    end.inject{|p,q| p.product(q)}.map do |a|
      [a].flatten.inject(&:*)
    end.sort
  end
end

inputs = gets
arr = inputs.split
num = arr[0].to_i
init_x = arr[1].to_i

citys = gets.split
citys.map!(&:to_i)

citys.map! {|a| (a - init_x).abs }

citys.sort!

arr = citys[0].my_divisor_list2.reverse!

flag = true
arr.each do |a|
  citys.each do |x|
    if x % a != 0 then
      flag = false
      next
    end
  end
  if flag == true then
    p a
    break;
  end
end