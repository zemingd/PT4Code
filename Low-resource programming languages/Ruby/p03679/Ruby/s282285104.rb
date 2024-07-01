x,a,b = gets.chomp.split(' ').map(&:to_i)
if b-a > 0
	puts 'delicious'
elsif b-a <= x
	puts 'safe'
elsif b-a >= x+1
	puts 'dangerous'
end