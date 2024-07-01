h, w = gets.chomp.split(' ').map(&:to_i)

odd_line_num = (h+1)/2
odd_row_num = (w+1)/2

puts (odd_line_num * odd_row_num) + (h-odd_line_num)*(w-odd_row_num)
