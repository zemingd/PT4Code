x,a,b = gets.chomp.split(' ').map(&:to_i)
if a-b > 0
	puts 'delicious'
elsif x+1 <= b-a
	puts 'dangerous'
else
	puts 'safe'
end