N = gets.to_i % 10

case N
  When 3
    puts "bon"
  when 0,1,6,8
    puts "pon"
  else
    puts "hon"
end