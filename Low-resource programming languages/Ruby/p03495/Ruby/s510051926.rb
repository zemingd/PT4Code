_, num = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
# a_uniq = a.uniq
# a_count = []
# a_uniq.each do |n|
#   a_count << a.count{ |c| c == n }
# end
a_uniq = []
current = nil
a.sort.each do |_a|
  if a_uniq.last.nil? || current != _a
    a_uniq << 1
  else
    a_uniq[-1] += 1
  end
  current = _a
end
a_sorted = a_uniq.sort
delete_num = (a_uniq.size - num)
if delete_num > 0
  p a_sorted[0..delete_num - 1].inject(:+)
else
  p 0
end
