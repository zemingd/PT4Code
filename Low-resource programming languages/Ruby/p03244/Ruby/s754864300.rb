n = gets.to_i
strs = gets.chomp.split(' ').map(&:to_i)
if strs.uniq.size == 1
  puts n / 2
  exit
end

odd_ary = strs.each_slice(2).map(&:first)
even_ary = strs.each_slice(2).map(&:last)
diff_odd_size = odd_ary.size - odd_ary.group_by(&:itself).map{|k, v| v.size}.max
diff_even_size =  even_ary.size - even_ary.group_by(&:itself).map{|k, v| v.size}.max
puts diff_odd_size + diff_even_size