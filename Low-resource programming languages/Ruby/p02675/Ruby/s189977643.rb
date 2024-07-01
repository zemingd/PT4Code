x = gets.to_i
x %= 10
if x >= 10
  x %= 10
end

case x
  when 2,4,5,7,9
	puts "hon"
  when 1,6,8
    puts "pon"
  else
    puts "hon"
end