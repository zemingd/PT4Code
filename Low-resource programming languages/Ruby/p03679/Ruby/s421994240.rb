x,a,b = gets.chomp.split(' ').map(&:to_i)
if a-b > 0
	puts 'delicious'
elsif x+(a-b) >= 0
	puts 'safe'
else
	puts 'dangerous'
end