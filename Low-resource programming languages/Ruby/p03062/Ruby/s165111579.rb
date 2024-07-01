N = gets.to_i
a_list = gets.split.map(&:to_i)
minus_count = a_list.count { |a| a < 0 }
abs_a_list = a_list.map(&:abs)
ans = if minus_count.even?
  abs_a_list.reduce(&:+)
else
  min, *rest = abs_a_list.sort
  -min + rest.reduce(0, &:+)
end
puts ans
