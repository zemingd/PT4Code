N = gets.chomp

puts \
  case N[-1].to_i
  when 2, 4, 5, 7, 9 then 'hon'
  when 0, 1, 6, 8    then 'pon'
  when 3             then 'bon'
  end
