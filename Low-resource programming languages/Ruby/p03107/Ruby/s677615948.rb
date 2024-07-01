s = gets.chomp.chars.map(&:to_i)
n = s.size
count_zero = s.count{|i| i == 0}
count_one = n - count_zero
if count_zero > count_one
  puts count_one*2
else
  puts count_zero*2
end
