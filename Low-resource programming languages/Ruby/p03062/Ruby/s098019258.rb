n = gets.chomp.to_i
array = gets.split.map(&:to_i)
negative_count = 0
array.each do |num|
  negative_count += 1 if num < 0
end
may_ans = 0
array.each do |num|
  may_ans += num.abs
end
if negative_count.even?
  ans = may_ans
else
  abs_array = array.map{ |num| num.abs }
  ans = may_ans - 2 * abs_array.min
end
puts ans