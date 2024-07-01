a,b,x = gets.split.map &:to_i

if x <= a + b && x >= a then
	puts 'YES'
else
	puts 'NO'
end