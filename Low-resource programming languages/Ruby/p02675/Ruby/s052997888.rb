N = gets.chomp.to_i % 10
case N
  when 2 || 4 || 5 || 7 || 9
  	puts "hon"
  when 0 || 1 || 6 || 8
  	puts "pon"
  when 3
	puts "bon"
end