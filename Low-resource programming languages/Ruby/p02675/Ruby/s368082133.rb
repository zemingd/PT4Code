num = gets.chomp.to_i　% 10

case num
  when 2,4,5,7,9
    puts 'hon'
  when 3 then
    puts 'bon'
  when 0,1,6,8 then
    puts 'pon'

  end
