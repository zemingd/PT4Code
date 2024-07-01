n = gets.chomp
last_num = n.chars.last.to_i

answer =
  case last_num
  when 2, 4, 5, 7, 9
    'hon'
  when 0, 1, 6, 8
    'pon'
  when 3
    'bon'
  end

puts answer
