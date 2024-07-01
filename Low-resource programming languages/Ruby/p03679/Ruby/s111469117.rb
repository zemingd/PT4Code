x,a,b = gets.chomp.split(' ').map(&:to_i)
if a-b >= 0
	puts 'delicious'
elsif x+1 <= b-a
	puts 'dangerous'
elsif a-b<0 && x >= b-a
	puts 'safe'
end