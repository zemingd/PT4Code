N = gets.to_i
s_list = N.times.map { gets.to_i }
list1 = s_list.select { |s| s % 10 == 0 }
list1_sum = list1.reduce(0, &:+)
list2 = s_list.select { |s| s % 10 != 0 }.sort
list2_sum = list2.reduce(0, &:+)
if list2.size == 0
  puts 0
elsif list2_sum % 10 != 0
  puts list1_sum + list2_sum
else
  ans = list1_sum + list2_sum - list2[0]
  puts ans
end
