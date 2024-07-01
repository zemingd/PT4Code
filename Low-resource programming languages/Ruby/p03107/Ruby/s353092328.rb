s = gets.chomp

zero_count = s.count('0')
one_count = s.count('1')

puts [zero_count, one_count].min * 2