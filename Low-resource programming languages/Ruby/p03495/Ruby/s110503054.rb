_, num = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
a_uniq = a.uniq
a_count = []
a_uniq.each do |n|
  a_count << a.count{ |c| c == n }
end
a_sorted = a_count.sort
delete_num = (a_uniq.size - num)
if delete_num > 0
  p a_sorted[0..delete_num - 1].inject(:+)
else
  p 0
end
