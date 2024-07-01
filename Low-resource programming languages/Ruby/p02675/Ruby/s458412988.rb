num = gets.chomp.to_i　% 10

case num
  when 3 then
    puts 'bon'
  when 0,1,6,8 then
    puts 'pon'
  else
    puts 'hon'
  end
