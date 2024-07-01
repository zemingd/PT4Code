_line_num, change_idx = gets.chomp.split(' ').map(&:to_i)

lines = gets.chomp.split('')

lines[change_idx-1] = lines[change_idx-1].downcase

puts lines.join('')