strs = gets.strip.split('')

_slice = strs.each_slice(2)
odd_strs = _slice.map(&:first)
even_strs = _slice.map(&:last)
even_strs.pop if strs.size % 2 == 1

odd_strs_one_count = odd_strs.count('1')
odd_strs_zero_count = odd_strs.size - odd_strs_one_count

even_strs_one_count = even_strs.count('1')
even_strs_zero_count = even_strs.size - even_strs_one_count

change_count_pattern1 = odd_strs_one_count + even_strs_zero_count
change_count_pattern2 = odd_strs_zero_count + even_strs_one_count

if change_count_pattern1 <= change_count_pattern2
  puts change_count_pattern1
else
  puts change_count_pattern2
end
