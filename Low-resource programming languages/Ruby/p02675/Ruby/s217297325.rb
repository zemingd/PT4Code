x = gets.to_i
x %= 10

case x
  when 2,4,5,7,9
	puts "hon"
  when 1,6,8
    puts "pon"
  else
    puts "hon"
end