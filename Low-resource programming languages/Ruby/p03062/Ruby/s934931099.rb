N = gets.to_i
a_list = gets.split.map(&:to_i)
if a_list.count { |a| a < 0 }.even?
  ans = a_list.reduce(0) { |acc, a| acc + a.abs }
  puts ans
else
  sum = a_list.reduce(0) { |acc, a| acc + a.abs }
  min = a_list.min_by(&:abs)
  ans = sum - min.abs * 2
  puts ans
end
