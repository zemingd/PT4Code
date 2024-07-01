num = gets.chomp!.split(' ').collect!{|a| a.to_i }
if ((num[0] < num[2]) && (num[1] > num[3])) || ((num[0] < num[2]) && (num[1] > num[3]))
  ary = []
  ary << num[1]- num[0]
  ary << num[3] - num[2]
  puts ary.min
else
  a, b = num.each_slice(2).to_a
  puts b.max - a.min if a.min > b.min
  puts a.max - b.min if a.min < b.min
end
